Genre.create!([
  {name: "thriller"},
  {name: "comedy"},
  {name: "romance"},
  {name: "drama"}
])
Actor.create!([
  {first_name: "Billy", last_name: "Crystal", known_for: "Saturday Night Live", gender: "male", age: 72},
  {first_name: "Julia", last_name: "Roberts", known_for: "Pretty Woman", gender: "female", age: 52},
  {first_name: "Drew", last_name: "Barrymore", known_for: "ET the Extra Terrestrial", gender: "female", age: 45},
  {first_name: "Tom", last_name: "Cruise", known_for: "Risky Business", gender: "male", age: 57},
  {first_name: "Meg", last_name: "Ryan", known_for: "Top Gun", gender: "male", age: 30},
  {first_name: "Brenda", last_name: "Pitt", known_for: "Once upon a time in holylword", gender: "female", age: 14},
  {first_name: "Brenda", last_name: "Pitt", known_for: "Once upon a time in holylword", gender: "female", age: 14}
])
Movie.create!([
  {title: "Jerry Maguire", year: 1998, plot: "A wonderful romantic comedy that has held up incredibly well in the quarter-century since its release. Tom Cruise plays the title character, a sports agent who is pushed into starting his own agency while he falls in love with a single mother, played by Renee Zellweger. It’s sweet, smart, and funny.", director: "Cameron Crowe", english: true},
  {title: "Wedding Singer", year: 1998, plot: "Set in 1985, Adam Sandler plays a nice guy with a broken heart who's stuck in one of the most romantic jobs in the world, a wedding singer. He loses all hope when he is abandoned at the altar by his fiancé. He meets a young woman named Julia (Drew Barrymore), who enlists his help to plan her wedding. He falls in love with her and must win her over before she gets married.", director: "Frank Coraci", english: true},
  {title: "Pretty Womans", year: 1990, plot: "In this modern update on Cinderella, a prostitute and a wealthy businessman fall hard for one another, forming an unlikely pair. While on a business trip in L.A., Edward (Richard Gere), who makes a living buying and breaking up companies, picks up a hooker, Vivian (Julia Roberts), on a lark. After Edward hires Vivian to stay with him for the weekend, the two get closer, only to discover there are significant hurdles to overcome as they try to bridge the gap between their very different worlds.", director: "Garry Marshall", english: true},
  {title: "When Harry Met Sally", year: 1989, plot: "In 1977, college graduates Harry Burns (Billy Crystal) and Sally Albright (Meg Ryan) share a contentious car ride from Chicago to New York, during which they argue about whether men and women can ever truly be strictly platonic friends. Ten years later, Harry and Sally meet again at a bookstore, and in the company of their respective best friends, Jess (Bruno Kirby) and Marie (Carrie Fisher), attempt to stay friends without sex becoming an issue between them.", director: "Rob Reine", english: true},
  {title: "Dazed and Confused", year: 1993, plot: "This coming-of-age film follows the mayhem of group of rowdy teenagers in Austin, Texas, celebrating the last day of high school in 1976. The graduating class heads for a popular pool hall and joins an impromptu keg party, however star football player Randall 'Pink' Floyd has promised to focus on the championship game and abstain from partying. Meanwhile, the incoming freshmen try to avoid being hazed by the seniors, most notably the sadistic bully Fred O'Bannion.", director: "Richard Linklater", english: true},
  {title: "There's Something About Mary", year: 1999, plot: "Ted's dream prom date with Mary never happens due to an embarrassing injury at her home. Years later, Ted hires Pat Healy to track down Mary so he can reconnect with her. Pat lies to Ted about Mary and he finds out everything he can about her to trick her into dating him. Ted travels to meet Mary and has to weave through the web of lies that Pat and Mary's friend Tucker have woven to try and win her over.", director: "Bobby Farrelly", english: true}
])
MovieGenre.create!([
  {genre_id: 3, movie_id: 1},
  {genre_id: 3, movie_id: 2},
  {genre_id: 3, movie_id: 3},
  {genre_id: 3, movie_id: 5},
  {genre_id: 3, movie_id: 6},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 2},
  {genre_id: 2, movie_id: 3},
  {genre_id: 2, movie_id: 4},
  {genre_id: 2, movie_id: 5},
  {genre_id: 2, movie_id: 6},
  {genre_id: 4, movie_id: 1},
  {genre_id: 4, movie_id: 5},
  {genre_id: 4, movie_id: 6},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1},
  {genre_id: 2, movie_id: 1}
])
User.create!([
  {name: "Rebecca Doukas", email: "rdoukas@gmail.com", password_digest: "$2a$12$N/Zs3rHOtOTxv5QLMKOzp.Q/ZJH3GStpaQk2iWL.Ylq1ZUzyv8x8i", admin: false},
  {name: "Sandy Doukas", email: "sdoukas@gmail.com", password_digest: "$2a$12$e0ebqnIA2EB8M3kVIMtJNu.c9cNer..JmRmbzKMX27C0Jvh7W82B.", admin: false},
  {name: "Jacob Doukas", email: "jdoukas@gmail.com", password_digest: "$2a$12$3XiF7wHbVh/6ILgwG.I9Z.Bl/1bNvOH9Kefu/afuvrtBenUAALLHO", admin: false},
  {name: "Steph Nixon", email: "SNixon@gmail.com", password_digest: "$2a$12$hTtTefczjymvaDzga1Odz.8G7v8ElFLLJMR70iiR7oBlXHV8AmQcK", admin: false},
  {name: "Rebecca Doukas", email: "rrdoukas@gmail.com", password_digest: "$2a$12$J/MVpjqZTjbeUQvz6YMzWeKMKnQP3elvYwZuQmatt9PPOX/ukOJuW", admin: false},
  {name: "Stephanie Doukas", email: "stephdoukas@gmail.com", password_digest: "$2a$12$AXhjNWJi8.QeJSkVRNGEyO4LXGTxuhIK6mvnY71SwZUypea7Eg5La", admin: false},
  {name: "Tom Doukas", email: "tdoukas@gmail.com", password_digest: "$2a$12$UZ463gIhRtNv2bBrwMGV0.OUX.nT54QN8c5uTpzLs/AV6x3StaF.e", admin: false},
  {name: "Tim Doukas", email: "timdoukas@gmail.com", password_digest: "$2a$12$grVM2rKoOHM.nRwahgtb7uAW0cLbjvu2yhgM/47wA.MsxexH4/wPq", admin: false},
  {name: "Becca", email: "becca@gmail.com", password_digest: "$2a$12$iBI35eAMd41FtfKi5QdtperJfhnDGawoppI7BhPj/2bMTtFzZmqie", admin: false}
])
