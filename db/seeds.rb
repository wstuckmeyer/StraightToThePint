User.create({username: 'dpatlut', password: 'david1'})
Profile.create({bio: 'I love Nickelback and Odouls!', picture: 'images/icons8-anonymous_mask.png', user_id: 1})
Post.create({title: 'Budlight', content: 'its the bomb', user_id: 1})
Post.create({title: 'Nickelback', content:'Look at this giraffe!', user_id: 1})
Post.create({title: 'Odouls', content: 'gets me soo buzzed!', user_id: 1})

User.create({username: 'memeKween', password: 'ro1'})
Profile.create({bio: 'Kittey!', picture: 'images/icons8-cat.png', user_id: 2})
Post.create({title: 'Cycling', content: 'with brews!', user_id: 2})
Post.create({title: 'SO DRUNK', content: 'with my cats', user_id: 2})
Post.create({title: 'Yummy Pale Ale"s', content:'nah I prefer Olde E', user_id: 2})

User.create({username: 'randalSandall', password:'randal1'})
Profile.create({bio: 'Ponies and Stouts all day long', picture: 'images/icons8-unicorn.png', user_id: 3})
Post.create(title: 'My Little Pony', content: 'with nice cold brew', user_id: 3)

User.create({username: 'Wstuckmeyer93', password: 'wesley1'})
Profile.create({bio: 'If only they made an Avocado beer..', picture: 'images/icons8-pikachu_pokemon.png', user_id: 4})
Post.create({title: 'Cider!', content: 'Angry ochard is my favorite', user_id: 4})

User.create({username:'dickHate', password:'rick1'})
Profile.create({bio: 'oh hey', picture: 'images/icons8-babys_room.png', user_id: 5})
Post.create({title: 'Ze German', content: 'Wheat beers are delicious!!', user_id: 5})

User.create({username: 'dutchkillsg', password:'malik1'})
Profile.create({bio: 'Gym, already tan, laundry', picture: 'images/icons8-broken_bottle.png', user_id: 6})
Post.create(title: 'Grimss', content: 'make"s the best IPAs all around!!', user_id: 6)