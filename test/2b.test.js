import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 2b', function () {
  let db
  let ids

  const expected = [
    { track_id: '6pLlQE4Ypn9zQBCe16UskF' },
    { track_id: '5xYhLsWe8BRHsJWszSnI66' },
    { track_id: '06PsoXmmJ6Ix8B4hMEabrX' },
    { track_id: '3HRMJqMNO9bLxhQDYvL1Yk' },
    { track_id: '6oWLwiY4Ik7XLGk4J9qPhx' },
    { track_id: '5etRxw6wddh61onsMwxzBt' },
    { track_id: '0hh6usshPzFf6j0lGkhMs3' }
  ]

  before(async function () {
    db = await connection()
    ids = await db.raw(await readFile('../exercises/2b.sql'))
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('should return the correct tracks', function () {
    assert.deepEqual(ids, expected)
  })

  it('should have the least danceable first', function () {
    assert.equal(ids.at(0).track_id, '6pLlQE4Ypn9zQBCe16UskF')
  })

  it('should have the most danceable last', function () {
    assert.equal(ids.at(-1).track_id, '0hh6usshPzFf6j0lGkhMs3')
  })
})
