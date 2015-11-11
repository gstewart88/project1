Game.delete_all
User.delete_all
User.create!(email: 'flangemodo@hotmail.com', name: 'Graeme Stewart', remote_avatar_url: 'http://vignette4.wikia.nocookie.net/streetfighter/images/c/cb/Ryu-hdstance.gif/revision/latest?cb=20100718231721', role: 'Admin', password: '12345678')
User.create!(email: 'iamjcvd@hotmail.com', name: 'Jean-Claude Van-Damme', remote_avatar_url: 'http://33.media.tumblr.com/tumblr_m2ewpdPGXI1rptf33o1_500.gif', role: 'Admin', password: '12345678')
Game.create!(player1: User.first, player2: User.last)