import fs from 'fs/promises'
import knex from 'knex'
import { fileURLToPath } from 'url'
import { exec } from 'child_process'
import util from 'util'

// provides a few utilities, including setting up and tearing down
// a test database.

// the database is seeded with the "restore" migrations.

// read files relative to test dir
export async function readFile(relpath) {
  const path = new URL(relpath, import.meta.url)
  const data = await fs.readFile(path, 'utf-8')
  return data
}

// connect to the test db
export async function connection() {
  // create and seed test.sqlite
  const execAsync = util.promisify(exec)
  await execAsync('npm run restore:test')

  const path = new URL('./test.sqlite', import.meta.url)

  const db = knex({
    client: 'sqlite3',
    connection: {
      filename: fileURLToPath(path)
    },
    useNullAsDefault: true
  })

  // monkey patch to delete test.sqlite
  db.delete = () => fs.unlink(path)

  return db
}
