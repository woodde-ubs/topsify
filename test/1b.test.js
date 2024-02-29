import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 1b', function () {
  let db
  let explicitTracks

  before(async function () {
    db = await connection()
    explicitTracks = await db.raw(await readFile('../exercises/1b.sql'))
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('should return objects with id and name properties', async function () {
    // Check the first returned track as a sample
    const hasCorrectStructure = explicitTracks.every(
      track => 'id' in track && 'name' in track
    )
    assert.equal(hasCorrectStructure, true)
  })

  it('should include calgary ID', async function () {
    const ids = explicitTracks.map(track => track.id)
    assert.equal(ids.includes('01BDK4Skxzh5mqnTbQzWGy'), true)
  })

  it('should not include Levitating ID', async function () {
    const ids = explicitTracks.map(track => track.id)
    assert.equal(ids.includes('6F0baA5t58AtAS9uFVe4su'), false)
  })
})
