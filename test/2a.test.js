import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 2a', function () {
  let db
  let sortedAlbums

  before(async function () {
    db = await connection()
    sortedAlbums = await db.raw(await readFile('../exercises/2a.sql'))
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('should have the newest album first', async function () {
    const newestAlbum = sortedAlbums[0]
    assert.equal(newestAlbum.id, '5KZ5cuVY1oLvHI1ecqoUJP') // Beautiful Things (Alternate Versions)
  })

  it('should have the oldest album last', async function () {
    const oldestAlbum = sortedAlbums[sortedAlbums.length - 1]
    assert.equal(oldestAlbum.id, '5nEa8zZQgZetmabLXu72Ko') // 12" Masters - The Essential Mixes
  })

  it('should include specific albums by their IDs', function () {
    const albumIds = sortedAlbums.map(album => album.id)
    // Test for the presence of a few known albums
    assert(albumIds.includes('3SC1jsqV6bCXzvbzrFNPV3')) // Lose Control (BBC Radio 1 Live Lounge Session)
    assert(albumIds.includes('3cGKAHAUhAaTTezK4GbBhQ')) // Stars Dance (Bonus Track Version)
  })

  it('should return objects with correct properties', function () {
    const sampleAlbum = sortedAlbums[0]
    assert('id' in sampleAlbum)
    assert('name' in sampleAlbum)
    assert('artist_id' in sampleAlbum)
    assert('release_date' in sampleAlbum)
  })
})
