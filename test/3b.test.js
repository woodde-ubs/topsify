import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 3b', function () {
  let db

  const expected = [
    {
      id: '58dsRKNbbcxQT3BywPdvpM',
      album_id: '1HOYLdaWocKi1YGveli9kF',
      name: 'Toya Turnup Talks (skit)',
      explicit: 1,
      preview_url:
        'https://p.scdn.co/mp3-preview/7dda8b113cb328f2b1f2b08dfb108ac4875bcee3?cid=ea2270e02312427a8a005012054dd5e9',
      disc_number: 1,
      track_number: 6,
      duration_ms: 36225.999999999999999
    },
    {
      id: '01JTGtI06aOfJpRmhc2FqH',
      album_id: '0KY2QQMpqsy1tOyNhr4zxI',
      name: "I''ll Be Home Intro - Interlude",
      explicit: 0,
      preview_url: 'null',
      disc_number: 1,
      track_number: 15,
      duration_ms: 36438.0
    },
    {
      id: '1kNdtonJXHorsVpWerK8C2',
      album_id: '3cf4iSSKd8ffTncbtKljXw',
      name: 'Intro',
      explicit: 0,
      preview_url: 'null',
      disc_number: 1,
      track_number: 1,
      duration_ms: 36934.999999999999999
    },
    {
      id: '3HRMJqMNO9bLxhQDYvL1Yk',
      album_id: '0KY2QQMpqsy1tOyNhr4zxI',
      name: 'Christmas Fail - Interlude',
      explicit: 0,
      preview_url: 'null',
      disc_number: 1,
      track_number: 11,
      duration_ms: 39100.999999999999999
    },
    {
      id: '5SuuMj9wyCefIhtAiGwqpy',
      album_id: '2H8u9DigrbmhweDlLr8twg',
      name: 'Temerity',
      explicit: 0,
      preview_url:
        'https://p.scdn.co/mp3-preview/cd93146a2657f726b87ebbd46fbc474a189f5829?cid=ea2270e02312427a8a005012054dd5e9',
      disc_number: 1,
      track_number: 2,
      duration_ms: 40999.999999999999999
    }
  ]

  before(async function () {
    db = await connection()
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('finds page 4', async function () {
    const actual = await db.raw(await readFile('../exercises/3b.sql'))
    assert.deepEqual(actual, expected)
  })
})
