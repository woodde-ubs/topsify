import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 1', function () {
  let db
  let artists

  before(async function () {
    db = await connection()
    artists = await db.raw(await readFile('../exercises/1a.sql'))
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('should contain Beyoncé name', async function () {
    assert.equal(artists.map(a => a.name).includes('Beyoncé'), true)
  })

  it('should contain Madonna ID', async function () {
    assert.equal(
      artists.map(a => a.id).includes('6tbjWDEIzxoDsBA1FuhfPW'),
      true
    )
  })

  it('should contain Doja Cat URL', async function () {
    assert.equal(
      artists
        .map(a => a.url)
        .includes('https://open.spotify.com/artist/5cj0lLjcoR7YOSnhnX0Po5'),
      true
    )
  })
})
