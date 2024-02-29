import assert from 'assert'
import { connection, readFile } from './config.js'

describe('Exercise 3a', function () {
  let db

  const expected = [
    {
      id: '5KZ5cuVY1oLvHI1ecqoUJP',
      name: 'Beautiful Things (Alternate Versions)',
      artist_id: '22wbnEMDvgVIAGdFeek6ET',
      release_date: '2024-02-23',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b273598f74bd601c1674e74a6498'
    },
    {
      id: '1GhTKndy4z6y8sJoKXi1kt',
      name: 'Praise Jah In The Moonlight (Live)',
      artist_id: '0n4Fao9kbjgM76RmVlfSwr',
      release_date: '2024-02-23',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b2739b5a83b5e21faaba83bf17ef'
    },
    {
      id: '7I7rbWQoLZ7PrTMsRfocpL',
      name: 'Love On',
      artist_id: '0C8ZW7ezQVs4URX5aX7Kqx',
      release_date: '2024-02-22',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b2731dd155d9de58c834e0eb38b6'
    },
    {
      id: '3SC1jsqV6bCXzvbzrFNPV3',
      name: 'Lose Control (BBC Radio 1 Live Lounge Session)',
      artist_id: '33qOK5uJ8AR2xuQQAhHump',
      release_date: '2024-02-15',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b2734d2cdecc9ca578a3e8cf92e2'
    },
    {
      id: '3lT7FPPZc8M8ONrsinrt8W',
      name: 'The Rest Is Pop',
      artist_id: '4j96cMcT8GRi11qbvo1cLQ',
      release_date: '2024-02-10',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b273e8f68dc475001d01f5d47b76'
    },
    {
      id: '3qBWNcWifNhUKJAWzswdJY',
      name: 'Stick Season (Forever)',
      artist_id: '2RQXRUsr4IW1f3mKyKsy4B',
      release_date: '2024-02-09',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b273ba6fb0a7e6c53fb8faa96226'
    },
    {
      id: '18sR8zHx4zsVJUI4bHWuPC',
      name: 'The Highlights (Deluxe)',
      artist_id: '1Xyo4u8uXC1ZmMpatF05PJ',
      release_date: '2024-02-09',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b273c87bfeef81a210ddb7f717b5'
    },
    {
      id: '5YXocog13Ei8qItXxiQxsX',
      name: 'American Romance',
      artist_id: '4j96cMcT8GRi11qbvo1cLQ',
      release_date: '2024-02-09',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b27342ffc60d01b98babfee2abcd'
    },
    {
      id: '62g7jm7YqkuQOhfhFpDQXC',
      name: 'Make You Mine',
      artist_id: '2kRfqPViCqYdSGhYSM9R0Q',
      release_date: '2024-02-09',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b27391465431a3458be9f164af81'
    },
    {
      id: '3rhtJIUiZIxNmKYpMkfoMG',
      name: 'Made For Me (Soul Train Performance Live)',
      artist_id: '7tjVFCxJdwT4NdrTmjyjQ6',
      release_date: '2024-02-02',
      image_url:
        'https://i.scdn.co/image/ab67616d0000b27317f76346c9c2352d19922f50'
    }
  ]

  before(async function () {
    db = await connection()
  })

  after(async function () {
    await db.destroy()
    await db.delete()
  })

  it('finds the 10 newest albums', async function () {
    const actual = await db.raw(await readFile('../exercises/3a.sql'))
    assert.deepEqual(actual, expected)
  })
})
