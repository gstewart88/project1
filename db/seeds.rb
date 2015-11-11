Game.delete_all
User.delete_all
User.create!(email: 'flangemodo@hotmail.com', name: 'Graeme Stewart', remote_avatar_url: 'http://pre10.deviantart.net/23dd/th/pre/i/2013/107/e/0/ryu_street_fighter_ii_sprite_hd_by_tyller16-d620tp0.png', role: 'Admin', password: '12345678')
User.create!(email: 'iamjcvd@hotmail.com', name: 'Jean-Claude Van-Damme', remote_avatar_url: 'http://cdn.wikimg.net/strategywiki/images/a/a4/SSF2T_Ken.gif', role: 'Admin', password: '12345678')
Game.create!(player1: User.first, player2: User.last)