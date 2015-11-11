Game.delete_all
User.delete_all
User.create!(email: 'flangemodo@hotmail.com', name: 'Graeme Stewart', role: 'Admin', password: '12345678')
User.create!(email: 'iamjcvd@hotmail.com', name: 'Jean-Claude Van-Damme', role: 'Admin', password: '12345678')
Game.create!(player1: User.first, player2: User.last)