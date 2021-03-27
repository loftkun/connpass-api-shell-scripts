# connpass-client-bash

shell scripts for [connpass API](https://connpass.com/about/api/)

## usage

``` shell
$ /bin/bash src/search.sh keyword_or address_matcher
```

| param | description | e.g. |
| --- | --- | --- |
| keyword_or | search keyword | "福岡,fukuoka" | 
| address_matcher | matcher for address of event | "福岡&#124;北九州&#124;fukuoka" | 
| max_count | search num of latest events<br>( if set 0, search all events )| 100 | 

## e.g.

``` shell
$ /bin/bash src/search.sh "福岡,fukuoka" "福岡|北九州|fukuoka" 100 | jq -s .
[
  {
    "event_url": "https://cnjp.connpass.com/event/139837/",
    "event_type": "participation",
    "owner_nickname": "YosukeShindo",
    "series": {
      "url": "https://cnjp.connpass.com/",
      "id": 6174,
      "title": "Cloud Native JP"
    },
    "updated_at": "2019-07-17T18:14:12+09:00",
    "lat": "33.590897300000",
    "started_at": "2019-08-08T19:00:00+09:00",
    "hash_tag": "cnjp",
    "title": "Cloud Native FUKUOKA #02",
    "event_id": 139837,
    "lon": "130.400503500000",
    "waiting": 0,
    "limit": 20,
    "owner_id": 100333,
    "owner_display_name": "shindoy",
    "description": "<h1>Cloud Native 福岡 #02 開催概要</h1>\n<p>前回の「Cloud Native FUKUOKA #01」（5/3開催）は、連休中にもかかわらずなんと<b>約40名</b>もの方にご参加いただきました！今回は、みんなで楽しく10分LT大会を行いたいと思います！福岡でCloud Nativeな活動をどんどん盛り上げましょう！！</p>\n<h1>こんな方に是非来ていただきたい！！！</h1>\n<ul>\n<li>技術が好きで好きでたまらない人たち</li>\n<li>Cloud Nativeなアーキテクチャが好きな人たち</li>\n<li>マイクロサービス、サービスメッシュの運用について語り合いたい人たち</li>\n<li>Kubernetesってなに? 少し触った事あるぜ って初心者の方</li>\n<li>Dockerってなに? 少し触った事あるぜ って初心者の方</li>\n<li>これからのアプリケーションのアーキテクチャに関心がある方</li>\n<li>コンテナ（オーケストレーション）についての課題や悩みを抱えてる方々</li>\n</ul>\n<h1>登壇予定者(敬称略、順不同)</h1>\n<h1>会場・時間</h1>\n<p>日時：2019年8月8日(木) 19:00 <b>(開場18:30)</b>～ 20:30<br>\n会場：<b>TKP天神カンファレンスセンター：ルーム「B」</b><br>\n住所：福岡県福岡市中央区天神1-10-13 天神MMTビル6F<br>\n交通：福岡市地下鉄空港線 天神駅 15番出口 徒歩2分 、西鉄天神大牟田線 西鉄福岡駅 徒歩5分<br>\nURL：<a href=\"https://www.kashikaigishitsu.net/facilitys/cc-tenjin/access/\" rel=\"nofollow\">https://www.kashikaigishitsu.net/facilitys/cc-tenjin/access/</a></p>\n<h1>タイムテーブル</h1>\n<p>※ LTご希望の方は、LT枠に登録のうえタイトル等メッセージをください！</p>\n<table>\n<thead>\n<tr>\n<th align=\"left\">時間</th>\n<th align=\"center\">スピーカー</th>\n<th align=\"left\">タイトル</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td align=\"left\">18:30-</td>\n<td align=\"center\">開場</td>\n<td align=\"left\"></td>\n</tr>\n<tr>\n<td align=\"left\">19:00-</td>\n<td align=\"center\">@Cheng</td>\n<td align=\"left\">「OSSによるCI/CD環境の構築」</td>\n</tr>\n<tr>\n<td align=\"left\">19:20-</td>\n<td align=\"center\">LT1</td>\n<td align=\"left\">※募集中！</td>\n</tr>\n<tr>\n<td align=\"left\">19:30-</td>\n<td align=\"center\">LT2</td>\n<td align=\"left\">※募集中！</td>\n</tr>\n<tr>\n<td align=\"left\">19:40-</td>\n<td align=\"center\">LT3</td>\n<td align=\"left\">※募集中！</td>\n</tr>\n<tr>\n<td align=\"left\">19:50-</td>\n<td align=\"center\">LT4</td>\n<td align=\"left\">※募集中！</td>\n</tr>\n<tr>\n<td align=\"left\">20:00-</td>\n<td align=\"center\">LT5</td>\n<td align=\"left\">※募集中！</td>\n</tr>\n<tr>\n<td align=\"left\">20:10-</td>\n<td align=\"center\">ネットワーキング</td>\n<td align=\"left\">名刺交換・コミュニケーションタイム</td>\n</tr>\n<tr>\n<td align=\"left\">20:30</td>\n<td align=\"center\">@shindoy</td>\n<td align=\"left\">クロージング</td>\n</tr>\n</tbody>\n</table>",
    "address": "福岡県福岡市中央区天神1-10-13 (天神MMTビル6F)",
    "catch": "夏のLT大会！Kubernetes & Cloud Native なんでもOK！",
    "accepted": 17,
    "ended_at": "2019-08-08T20:30:00+09:00",
    "place": "TKP天神カンファレンスセンター：ルーム「B」"
  },
  : ( abbreviation )
  {
      :  ( abbreviation )
  }
]
 ```
