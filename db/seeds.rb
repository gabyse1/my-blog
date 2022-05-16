# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(
  name: 'Tom',
  photo: 'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  bio: 'Ut molestie lectus et turpis aliquet molestie. Sed porttitor semper velit ut semper. Phasellus at turpis vel mauris lobortis vehicula. Curabitur tincidunt volutpat congue. Sed ac pretium nisl. Morbi vestibulum bibendum sagittis. Nullam id venenatis leo. Cras eu nunc luctus, pretium orci sit amet, finibus dolor. Nulla pretium leo at.',
  postsCounter: 0)
second_user = User.create(
  name: 'Lilly',
  photo: 'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
  bio: 'Phasellus accumsan odio quis augue pretium semper. Fusce sapien dolor, commodo ut dapibus vel, pretium id ipsum. Ut condimentum at urna ac suscipit. Nam viverra facilisis vestibulum. Donec egestas finibus tincidunt. Ut sed est vitae nibh accumsan venenatis. Mauris laoreet arcu a justo tristique, ac varius leo ultrices. Nunc placerat.',
  postsCounter: 0)
third_user = User.create(
  name: 'Parker',
  photo: 'https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  bio: 'Morbi tellus arcu, egestas eu elit in, pretium dapibus eros. Duis quis lacinia justo, a iaculis orci. Duis euismod sit amet lacus vel porttitor. Suspendisse tellus justo, sodales malesuada maximus a, pulvinar eget est. Praesent posuere mi nec mauris finibus tempus. Nam ut congue purus. Pellentesque lacinia velit id lorem suscipit fermentum. Sed tellus orci, consectetur in eros at, cursus lacinia ligula. Mauris aliquet dolor felis, id porttitor mi rhoncus ut. Donec scelerisque malesuada auctor. Cras sodales sapien urna, ut pulvinar turpis semper ut. Curabitur ligula velit, pulvinar vitae gravida ac, dapibus quis lorem. Nam enim sapien, placerat in augue.',
  postsCounter: 0)

# POSTS
first_post = Post.create(user: first_user, title: 'Hello first post',
text: 'Quisque dapibus hendrerit convallis. Vivamus ac ante nec elit accumsan tristique dignissim sit amet mauris. Cras iaculis dapibus nulla, vel condimentum magna feugiat eget. In porttitor ultricies sapien, eu porta nunc tempus quis. Suspendisse sit amet lacus sit amet lacus consequat malesuada quis nec nunc. Nunc sit amet metus dolor.
 Vestibulum ac est vel sapien volutpat maximus eget id nisl. Mauris vitae sodales odio. Proin ut mauris eu dolor blandit fringilla. Pellentesque sed nunc vel ligula finibus luctus. Mauris sodales velit eu magna molestie, vitae dictum dui efficitur. Nulla aliquet non nibh nec mattis. Sed vel tempor nisi, eu tempus.',
commentsCounter: 0, likesCounter: 0)
second_post = Post.create(user: first_user, title: 'Hello second post',
text: 'Nunc consequat vulputate ex, et sollicitudin odio pulvinar sed. Sed enim felis, eleifend ornare tempus ut, tincidunt egestas magna. Morbi consectetur dolor arcu, eu ultrices ipsum varius ac. Aenean ac nibh risus. Vivamus sit amet pulvinar turpis, at viverra tellus. Nulla sit amet massa id ipsum dignissim vestibulum sit amet et sem. Curabitur mauris felis, laoreet non facilisis sed, rhoncus et augue. Nam pulvinar sapien et magna vehicula maximus vitae nec arcu.
Maecenas dapibus placerat dolor, luctus pellentesque urna pellentesque eget. Donec at elementum nisl, vitae vulputate ex. Sed tincidunt nibh non enim aliquam rutrum. Nulla eu viverra nisl, eu.',
commentsCounter: 0, likesCounter: 0)
third_post = Post.create(user: first_user, title: 'Hello third post',
text: 'Nullam quis consectetur mauris. Donec et consectetur nisi. Phasellus ut elit eget risus lobortis laoreet eget at dolor. Nunc at sem id sapien fermentum volutpat. Nunc massa ante, suscipit a posuere feugiat, blandit eu dui. Ut feugiat velit ac elementum vulputate. Phasellus congue nunc.
Sed euismod varius lectus quis eleifend. Morbi congue nunc eget nunc luctus tristique. Donec ut vehicula eros, a eleifend ex. Nunc justo libero, iaculis eu quam ac, gravida pharetra leo. Aliquam erat volutpat. Aliquam tristique pharetra nisl vitae ultrices. Pellentesque sem nisl, tempor non convallis non, varius et nisi. Nulla malesuada est quis velit ullamcorper imperdiet.',
commentsCounter: 0, likesCounter: 0)
fourth_post = Post.create(user: first_user, title: 'Hello fourth post',
text: 'Curabitur vulputate, diam vitae ultricies egestas, odio magna aliquet dui, et luctus metus ipsum et metus. Vestibulum interdum ante vel arcu sollicitudin, in porta justo luctus. Morbi a risus consequat nunc tincidunt faucibus et sit amet nulla. Quisque tincidunt orci eleifend, tempus urna ut, tristique justo. Mauris ac ipsum in nulla venenatis pulvinar a id ex. In consectetur imperdiet sem sed pretium. Donec id facilisis dui. Maecenas sapien mauris, vestibulum vitae tortor maximus, elementum tincidunt ante.
Praesent ut condimentum lacus, a consequat neque. Integer elementum metus id ex varius, nec aliquam felis pharetra. Vivamus non magna eget mi finibus finibus.',
commentsCounter: 0, likesCounter: 0)
fifth_post = Post.create(user: second_user, title: 'Hello fifth posts',
text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
commentsCounter: 0, likesCounter: 0)
sixth_post = Post.create(user: second_user, title: 'Hello sixth post',
text: 'Donec vitae dignissim magna. Proin auctor ex sed dui commodo, id tincidunt nunc molestie. Mauris vitae nulla in leo pretium laoreet sed quis mauris. Aliquam at lectus in purus commodo mollis. Ut varius pretium aliquet. Donec tempor ornare nisi, in laoreet dolor maximus tristique. In dapibus ultricies ornare. Integer convallis urna non gravida semper. Praesent auctor tortor et dolor viverra molestie. In lobortis lorem vel purus condimentum lacinia. Morbi a sapien eget tortor porttitor tempor vitae non ipsum.
Ut bibendum leo justo, quis bibendum augue bibendum tincidunt. Nulla nec tempor magna. Fusce cursus ipsum eu nisi vulputate mattis non scelerisque risus. Vivamus ut odio justo. Aliquam placerat, dui non sagittis varius, nunc felis aliquet lacus, vitae sodales massa neque vel orci. Curabitur justo ante, venenatis nec mi et, tempus convallis ex. Praesent condimentum, eros eget venenatis vulputate, leo augue vestibulum quam, quis ultricies eros sapien vel magna. Cras fermentum blandit dolor. Vestibulum porta nisi mauris, auctor eleifend enim pulvinar in. Donec in enim vel enim venenatis ullamcorper at vitae diam. Sed at quam at est pretium aliquet sit amet et nulla. Cras scelerisque neque quis nibh placerat auctor. Praesent quis gravida massa. Mauris nibh sapien, volutpat vitae suscipit id, rutrum sed ipsum. In vulputate pretium velit ac egestas. Quisque mattis augue vel sem iaculis, ut eleifend lacus ornare.',
commentsCounter: 0, likesCounter: 0)
seventh_post = Post.create(user: second_user, title: 'Hello seven post',
text: 'Mauris lorem orci, auctor id imperdiet et, accumsan id ligula. Aenean non diam eget justo tempor sodales. Nunc quis tempor ex, nec tincidunt purus. Donec gravida massa sed elit consequat imperdiet. Etiam fermentum iaculis consectetur. Donec cursus urna eget vulputate luctus. Sed sagittis neque libero. Morbi fermentum ullamcorper orci, id consequat nisl maximus quis. Aliquam egestas volutpat mauris vitae aliquam. Mauris ac metus tempus, feugiat nisl id, maximus felis. Sed lobortis sollicitudin tortor. Sed eu tempus nibh.
In at tempor libero. Morbi mollis nulla libero, ac gravida elit fringilla at. Nam egestas ante ac enim pellentesque, gravida tristique augue maximus. Suspendisse lectus nisl, rutrum vel varius vitae, convallis vitae orci. Fusce vel efficitur mi. Phasellus tristique, lectus vitae ultrices rutrum, tortor enim commodo libero, pellentesque egestas mi turpis at elit. Sed quis arcu a purus suscipit pulvinar. In non nisi vehicula, rhoncus nulla at, aliquet purus. Donec a pharetra purus. Phasellus vehicula nulla leo, in euismod ex placerat vitae. Pellentesque finibus, mi ac maximus posuere, erat est facilisis nibh, ac tincidunt leo magna eget dui. Nullam at tristique lorem, eu porta dolor. Aenean non eros vel justo rhoncus hendrerit sit amet sit amet justo. Phasellus sed nibh at felis aliquet tincidunt. Fusce accumsan velit a venenatis porttitor. Mauris vestibulum elit tincidunt elementum venenatis.',
commentsCounter: 0, likesCounter: 0)
eighth_post = Post.create(user: second_user, title: 'Hello eighth post',
text: 'Quisque dapibus hendrerit convallis. Vivamus ac ante nec elit accumsan tristique dignissim sit amet mauris. Cras iaculis dapibus nulla, vel condimentum magna feugiat eget. In porttitor ultricies sapien, eu porta nunc tempus quis. Suspendisse sit amet lacus sit amet lacus consequat malesuada quis nec nunc. Nunc sit amet metus dolor.
 Vestibulum ac est vel sapien volutpat maximus eget id nisl. Mauris vitae sodales odio. Proin ut mauris eu dolor blandit fringilla. Pellentesque sed nunc vel ligula finibus luctus. Mauris sodales velit eu magna molestie, vitae dictum dui efficitur. Nulla aliquet non nibh nec mattis. Sed vel tempor nisi, eu tempus.',
commentsCounter: 0, likesCounter: 0)
ninth_post = Post.create(user: second_user, title: 'Hello ninth post',
text: 'Nunc consequat vulputate ex, et sollicitudin odio pulvinar sed. Sed enim felis, eleifend ornare tempus ut, tincidunt egestas magna. Morbi consectetur dolor arcu, eu ultrices ipsum varius ac. Aenean ac nibh risus. Vivamus sit amet pulvinar turpis, at viverra tellus. Nulla sit amet massa id ipsum dignissim vestibulum sit amet et sem. Curabitur mauris felis, laoreet non facilisis sed, rhoncus et augue. Nam pulvinar sapien et magna vehicula maximus vitae nec arcu.
Maecenas dapibus placerat dolor, luctus pellentesque urna pellentesque eget. Donec at elementum nisl, vitae vulputate ex. Sed tincidunt nibh non enim aliquam rutrum. Nulla eu viverra nisl, eu.',
commentsCounter: 0, likesCounter: 0)
tenth_post = Post.create(user: third_user, title: 'Hello tenth post',
text: 'Nullam quis consectetur mauris. Donec et consectetur nisi. Phasellus ut elit eget risus lobortis laoreet eget at dolor. Nunc at sem id sapien fermentum volutpat. Nunc massa ante, suscipit a posuere feugiat, blandit eu dui. Ut feugiat velit ac elementum vulputate. Phasellus congue nunc.
Sed euismod varius lectus quis eleifend. Morbi congue nunc eget nunc luctus tristique. Donec ut vehicula eros, a eleifend ex. Nunc justo libero, iaculis eu quam ac, gravida pharetra leo. Aliquam erat volutpat. Aliquam tristique pharetra nisl vitae ultrices. Pellentesque sem nisl, tempor non convallis non, varius et nisi. Nulla malesuada est quis velit ullamcorper imperdiet.',
commentsCounter: 0, likesCounter: 0)
eleventh_post = Post.create(user: third_user, title: 'Hello eleventh post',
text: 'Curabitur vulputate, diam vitae ultricies egestas, odio magna aliquet dui, et luctus metus ipsum et metus. Vestibulum interdum ante vel arcu sollicitudin, in porta justo luctus. Morbi a risus consequat nunc tincidunt faucibus et sit amet nulla. Quisque tincidunt orci eleifend, tempus urna ut, tristique justo. Mauris ac ipsum in nulla venenatis pulvinar a id ex. In consectetur imperdiet sem sed pretium. Donec id facilisis dui. Maecenas sapien mauris, vestibulum vitae tortor maximus, elementum tincidunt ante.
Praesent ut condimentum lacus, a consequat neque. Integer elementum metus id ex varius, nec aliquam felis pharetra. Vivamus non magna eget mi finibus finibus.',
commentsCounter: 0, likesCounter: 0)

# COMMENTS
Comment.create(post: first_post, user: second_user, text: 'In tincidunt odio vel turpis auctor, at gravida lacus semper. Maecenas aliquet ac eros vel accumsan. Vestibulum tristique dolor quis.' )
Comment.create(post: first_post, user: third_user, text: 'Praesent eu neque ac risus porta tempus nec et lorem. Nam sit amet hendrerit odio. Morbi sit amet nisi tortor.' )
Comment.create(post: first_post, user: second_user, text: 'Maecenas varius vehicula imperdiet. Praesent eu blandit urna. Vestibulum porttitor semper augue, nec mollis ligula commodo ut. Nulla et aliquet.' )
Comment.create(post: first_post, user: third_user, text: 'Nulla vel urna sapien. Praesent at dui consectetur, pulvinar nulla ut, finibus lorem. Nulla congue tortor nec consequat lobortis. Mauris.' )
Comment.create(post: first_post, user: second_user, text: 'Maecenas varius vehicula imperdiet. Praesent eu blandit urna. Vestibulum porttitor semper augue, nec mollis ligula commodo ut. Nulla et aliquet.' )
Comment.create(post: first_post, user: third_user, text: 'Nulla vel urna sapien. Praesent at dui consectetur, pulvinar nulla ut, finibus lorem. Nulla congue tortor nec consequat lobortis. Mauris.' )
Comment.create(post: second_post, user: second_user, text: 'Vestibulum venenatis suscipit tellus sed molestie. Phasellus ullamcorper odio at leo tempor placerat. Ut a pretium lorem. Nam mollis sagittis.' )
Comment.create(post: second_post, user: third_user, text: 'Aenean tristique, leo non accumsan tristique, dui mauris congue enim, vel mattis velit orci at sapien. In at congue justo.' )
Comment.create(post: fifth_post, user: first_user, text: 'Sed nibh ipsum, gravida placerat nunc nec, auctor porttitor nisi. Donec elementum condimentum arcu eu lobortis. Morbi dictum efficitur mattis.')
Comment.create(post: fifth_post, user: third_user, text: 'Curabitur vel arcu dui. Duis sed lectus sed felis bibendum finibus vitae id nisi. Praesent imperdiet lacinia rhoncus. Aenean eget.')
Comment.create(post: seventh_post, user: second_user, text: 'Integer aliquam sollicitudin viverra. Integer id finibus ante. Vivamus auctor enim in purus malesuada eleifend. Donec in turpis accumsan, egestas.')
Comment.create(post: seventh_post, user: first_user, text: 'Maecenas justo leo, porta sit amet aliquet quis, luctus at enim. Nullam eget nunc eu quam placerat convallis. Maecenas et.')
Comment.create(post: fourth_post, user: second_user, text: 'In tincidunt odio vel turpis auctor, at gravida lacus semper. Maecenas aliquet ac eros vel accumsan. Vestibulum tristique dolor quis.' )
Comment.create(post: fourth_post, user: third_user, text: 'Praesent eu neque ac risus porta tempus nec et lorem. Nam sit amet hendrerit odio. Morbi sit amet nisi tortor.' )
Comment.create(post: fourth_post, user: second_user, text: 'Maecenas varius vehicula imperdiet. Praesent eu blandit urna. Vestibulum porttitor semper augue, nec mollis ligula commodo ut. Nulla et aliquet.' )
Comment.create(post: fourth_post, user: third_user, text: 'Nulla vel urna sapien. Praesent at dui consectetur, pulvinar nulla ut, finibus lorem. Nulla congue tortor nec consequat lobortis. Mauris.' )
Comment.create(post: fourth_post, user: second_user, text: 'Maecenas varius vehicula imperdiet. Praesent eu blandit urna. Vestibulum porttitor semper augue, nec mollis ligula commodo ut. Nulla et aliquet.' )
Comment.create(post: fourth_post, user: third_user, text: 'Nulla vel urna sapien. Praesent at dui consectetur, pulvinar nulla ut, finibus lorem. Nulla congue tortor nec consequat lobortis. Mauris.' )
