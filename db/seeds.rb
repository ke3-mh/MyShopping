# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    {email: 'dog@example.com', name: 'Dog', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")},
    {email: 'kangaroo@example.com', name: 'Kangaroo', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")},
    {email: 'gorilla@example.com', name: 'Gorilla', password: 'password', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")}
  ]
)

reviews = Review.create!(
  [
    # user1
    {
      name: 'イグザンプル包丁', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review1-1.jpg"), filename:"sample-review1-1.jpg"), tag: 'キッチン',
      caption: %{今話題のイグザンプル包丁を買いました!\n扱いやすいサイズで持ちやすくて料理初心者におすすめです!\nこれ一本で何とかなっています✌️😉},
      user_id: users[0].id
    },
    {
      name: 'イグザンプル焚き火台', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review1-2.jpg"), filename:"sample-review1-2.jpg"), tag: 'アウトドア',
      caption: %{とにかくコンパクトな一人用の焚き火台です!\nバイクに積んでもスペースをとらないので楽です!\n後処理が楽なので楽です👍また買います！},
      user_id: users[0].id
    },
    {
      name: 'イグザンプルキーボード', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review1-3.jpg"), filename:"sample-review1-3.jpg"), tag: 'パソコン',
      caption: %{会社用でこちらのキーボードを購入しました。\n!値段のわりにとても使いやすいです。カラーバリエーションも豊富なので自宅用でも購入しようと思います。},
      user_id: users[0].id
    },
    {
      name: 'イグザンプルケーブル', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review1-4.jpg"), filename:"sample-review1-4.jpg"), tag: '家電',
      caption: %{目に入らないとはいえしっかり整理したかったので買いました!\nほこりにから火事にならないようになっているので安心です。👍また買います！},
      user_id: users[0].id
    },
    {
      name: 'イグザンプルパーティ', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review1-5.jpg"), filename:"sample-review1-5.jpg"), tag: 'おもちゃ',
      caption: %{こどもの仮装用で購入しました。\n!値段のわりにとても使いやすいです。壊れにくいのでプレゼントで再度購入しようと思います。},
      user_id: users[0].id
    },
    # user2
    {
      name: 'イグザンプル鍋', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review2-1.jpg"), filename:"sample-review2-1.jpg"), tag: 'キッチン',
      caption: %{今話題のイグザンプル鍋を買いました!\n扱いやすいサイズで持ちやすくて料理初心者におすすめです!\nこれ一つで何とかなっています✌️😉},
      user_id: users[1].id
    },
    {
      name: 'イグザンプル頭傘', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review2-2.jpg"), filename:"sample-review2-2.jpg"), tag: 'アウトドア',
      caption: %{面白そうだったのでつい、買ってしましました!\n機能は意外と快適です！\n手が空くのがグッドです！子供も喜んでます😊},
      user_id: users[1].id
    },
    {
      name: 'イグザンプルマイク', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review2-3.jpg"), filename:"sample-review2-3.jpg"), tag: 'パソコン',
      caption: %{PCで歌の練習をするために話題のこの商品を購入しました。\n!音程のズレをわかりやすく教えてくれるのがとてもいいです。英語の発音の練習もできるそうです。},
      user_id: users[1].id
    },
    {
      name: 'イグザンプル延長コード', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review2-4.jpg"), filename:"sample-review2-4.jpg"), tag: '家電',
      caption: %{目に入らないとはいえしっかり整理したかったので買いました!\nほこりにから火事にならないようになっているので安心です。👍また買います！},
      user_id: users[1].id
    },
    {
      name: 'イグザンプルボード', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review2-5.jpg"), filename:"sample-review2-5.jpg"), tag: 'おもちゃ',
      caption: %{気になっていたので購入しました。\n!光るのが近未来な感じで楽しい。新感覚でこれにのるのが楽しみでしょうがない！！},
      user_id: users[1].id
    },
    # user3
    {
      name: 'イグザンプル軽量カップ', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review3-1.jpg"), filename:"sample-review3-1.jpg"), tag: 'キッチン',
      caption: %{おしゃれでキッチンが色鮮やかになります\n気分的に料理が以前より楽しくなったように感じます！\n水気がすぐなくなるのがとても使いやすい},
      user_id: users[2].id
    },
    {
      name: 'イグザンプルチェア', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review3-2.jpg"), filename:"sample-review3-2.jpg"), tag: 'アウトドア',
      caption: %{とにかくコンパクトなキャンプチェアです!\n車に積んでもスペースをとらないので楽です!\n倒れにくい設計で地面が不安定でも安定してくつろげます！},
      user_id: users[2].id
    },
    {
      name: 'イグザンプルダスター', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review3-3.jpg"), filename:"sample-review3-3.jpg"), tag: 'パソコン',
      caption: %{会社のキーボードを掃除するために購入しました。\n!とにかく音が鳴りません！作業中でも周りに迷惑になりません。機能も申し分なく使えます。自分用でも購入しようと思います。},
      user_id: users[2].id
    },
    {
      name: 'イグザンプル洗濯機', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review3-4.jpg"), filename:"sample-review3-4.jpg"), tag: '家電',
      caption: %{Youtuberが紹介していた洗濯機です!\nほこりや汚れを勝手に集めてくれる機能が便利でお手入れがラク！しわにならないのもとてもいい！圧倒的時短になる洗濯機！！},
      user_id: users[2].id
    },
    {
      name: 'イグザンプル雪玉メーカー', item_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-review3-5.jpg"), filename:"sample-review3-5.jpg"), tag: 'おもちゃ',
      caption: %{SNSにアップする写真用に使ってます！！\n子供がかわいい雪だるまができたと喜んでます！！},
      user_id: users[2].id
    }
  ]
)

Good.create!(
  [
    # user1
    {user_id: users[0].id, review_id: reviews[3].id},
    {user_id: users[0].id, review_id: reviews[5].id},
    {user_id: users[0].id, review_id: reviews[7].id},
    # user2
    {user_id: users[1].id, review_id: reviews[0].id},
    {user_id: users[1].id, review_id: reviews[7].id},
    # user3
    {user_id: users[2].id, review_id: reviews[0].id},
    {user_id: users[2].id, review_id: reviews[4].id}
  ]
)

Comment.create!(
  [
    # user1
    {user_id: users[0].id, review_id: reviews[3].id, comment_text: '見つけたら買います'},
    {user_id: users[0].id, review_id: reviews[5].id, comment_text: 'これは欲しい..'},
    {user_id: users[0].id, review_id: reviews[7].id, comment_text: 'これ気になってました！'},
    # user2
    {user_id: users[1].id, review_id: reviews[0].id, comment_text: '私も使っています！おすすめです！'},
    {user_id: users[1].id, review_id: reviews[7].id, comment_text: '人気過ぎてどこにも売りきれ..'},
    # user3
    {user_id: users[2].id, review_id: reviews[0].id, comment_text: 'プレゼントで買いました！'},
    {user_id: users[2].id, review_id: reviews[4].id, comment_text: 'これ使うと美味しくなる'}
  ]
)