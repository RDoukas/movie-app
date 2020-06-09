# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#




movie = Movie.create!([{title: "Jerry Maguire", year:1996, plot:"A wonderful romantic comedy that has held up incredibly well in the quarter-century since its release. Tom Cruise plays the title character, a sports agent who is pushed into starting his own agency while he falls in love with a single mother, played by Renee Zellweger. It’s sweet, smart, and funny.", english: true, director: "Cameron Crowe"},
{title: "There's Something About Mary", year:1998, plot: "Ted's dream prom date with Mary never happens due to an embarrassing injury at her home. Years later, Ted hires Pat Healy to track down Mary so he can reconnect with her. Pat lies to Ted about Mary and he finds out everything he can about her to trick her into dating him. Ted travels to meet Mary and has to weave through the web of lies that Pat and Mary's friend Tucker have woven to try and win her over.", english: true, director: "Bobby Farrelly"}, 
{title: "The Wedding Singer", year:1998, plot:"Set in 1985, Adam Sandler plays a nice guy with a broken heart who's stuck in one of the most romantic jobs in the world, a wedding singer. He loses all hope when he is abandoned at the altar by his fiancé. He meets a young woman named Julia (Drew Barrymore), who enlists his help to plan her wedding. He falls in love with her and must win her over before she gets married.", english: true, director: "Frank Coraci"},
{title: "Dazed and Confused", year:1993, plot: "This coming-of-age film follows the mayhem of group of rowdy teenagers in Austin, Texas, celebrating the last day of high school in 1976. The graduating class heads for a popular pool hall and joins an impromptu keg party, however star football player Randall 'Pink' Floyd has promised to focus on the championship game and abstain from partying. Meanwhile, the incoming freshmen try to avoid being hazed by the seniors, most notably the sadistic bully Fred O'Bannion.", english: true, director: "Richard Linklater"},
{title: "Pretty Woman", year:1990, plot:"In this modern update on Cinderella, a prostitute and a wealthy businessman fall hard for one another, forming an unlikely pair. While on a business trip in L.A., Edward (Richard Gere), who makes a living buying and breaking up companies, picks up a hooker, Vivian (Julia Roberts), on a lark. After Edward hires Vivian to stay with him for the weekend, the two get closer, only to discover there are significant hurdles to overcome as they try to bridge the gap between their very different worlds.", english: true, director: "Garry Marshall"},
{title: "When Harry Met Sally", year:1989, plot:"In 1977, college graduates Harry Burns (Billy Crystal) and Sally Albright (Meg Ryan) share a contentious car ride from Chicago to New York, during which they argue about whether men and women can ever truly be strictly platonic friends. Ten years later, Harry and Sally meet again at a bookstore, and in the company of their respective best friends, Jess (Bruno Kirby) and Marie (Carrie Fisher), attempt to stay friends without sex becoming an issue between them.", english: true, director: "Rob Reiner"}
])


actor = Actor.create!([
  {first_name: "Meg", last_name: "Ryan", known_for: "Top Gun", age: 58, gender: 'female', movie_id: 6}, 
  {first_name: "Billy", last_name: "Crystal", known_for: "Saturday Night Live", age: 72, gender: "male", movie_id: 6},
  {first_name: "Julia", last_name: "Roberts", known_for: "Pretty Woman", age: 52, gender: "female", movie_id: 5},
  {first_name: "Drew", last_name: "Barrymore", known_for: "ET the Extra Terrestrial", age: 45, gender: "female", movie_id: 3},
  {first_name: "Tom", last_name: "Cruise", known_for: "Risky Business", age: 57, gender: "male", movie_id: 1}
])











