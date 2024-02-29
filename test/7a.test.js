import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 7a', function () {
  let db
  let users

  before(async function () {
    db = await connection()
    await db.raw(await readFile('../exercises/7a.sql'))
    users = await db.raw('SELECT * FROM users WHERE (id = 201 OR id = 202)')
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('should create two new users', async function () {
    const expected = [201, 202]
    const actual = users.map(user => user.id)

    assert.deepEqual(actual, expected)
  })

  it('should create them with the correct usernames', async function () {
    const expected = ['Vincenza.Kovacek', 'Lionel_Ruecker27']
    const actual = users.map(user => user.username)

    assert.deepEqual(actual, expected)
  })
})
