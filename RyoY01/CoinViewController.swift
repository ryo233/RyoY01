//
//  CoinViewController.swift
//  RyoY01
//
//  Created by Ryo on 2018/1/2.
//  Copyright © 2018年 Ryo. All rights reserved.
//

import UIKit
import AVFoundation
import GameplayKit
class CoinViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var coinChoicePickerView: UIPickerView!
    @IBOutlet weak var coinResultLabel: UILabel!
    @IBOutlet weak var coinUpImageView: UIImageView!
    @IBOutlet weak var coinDownImageView: UIImageView!
    @IBOutlet weak var coinResultNameLabel: UILabel!
    @IBOutlet weak var coinResultImageView: UIImageView!
    @IBOutlet weak var coinReadButton: UIButton!
    @IBOutlet weak var coinReadLabel: UILabel!
    @IBAction func coinReadButton(_ sender: Any) {let speechUtterance =  AVSpeechUtterance(string: coinResultLabel.text!)
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        let synth = AVSpeechSynthesizer()
        synth.speak(speechUtterance)
    }
    @IBAction func coinNumberTestButton(_ sender: Any) {
        coinReadButton.isHidden = false
        coinResultImageView.isHidden = false
        coinReadLabel.isHidden = false
        let randomCoin1Distribution =
        GKRandomDistribution(lowestValue: 0, highestValue: 1)
        let randomCoin2Distribution =
            GKRandomDistribution(lowestValue: 0, highestValue: 1)
        let randomCoin3Distribution =
            GKRandomDistribution(lowestValue: 0, highestValue: 1)
        var coin = [Int]()
        var coin1 = [Int]()
        var coin2 = [Int]()
        var coin3 = [Int]()
        for _ in 1...6 {
            let number1 = randomCoin1Distribution.nextInt()
            let number2 = randomCoin2Distribution.nextInt()
            let number3 = randomCoin3Distribution.nextInt()
            coin1.append(number1)
            coin2.append(number2)
            coin3.append(number3)
            coin.append(number1+number2+number3)
        }
        if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "坤為地"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "低調為主，順從他人，順其自然，凡事不強求為佳，處變不驚，以退為進"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "多少耕耘多少收穫，聽從專家建議，保守為主，等待好時機到來"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "順著對方，不可躁進，不要意氣用事，發揮陰柔特質，以柔克剛便好"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "要能沈得住氣，事情最後會走向吉祥之象，若有挫折爭吵，之後可化解"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績平平，保持平常心，作好最佳準備"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不適合，時機未到，繼續充實自己，多累積實力資本與技能"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "時機不利，難找到好工作，暫時留原地會更好"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況對自己有利，但是能和解更好，廣結善緣，莫結惡緣"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，若真要外出，請多保持低調為佳"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "需要好好練習平靜，打坐或冥想都會有所幫助"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "地天泰"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "運勢一切吉祥，亨通順利，勿過分驕傲而放縱自己，時時僅提提醒自己"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "財運亨通，錢財自來，守住更好"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "情投意合，能站在對方角度為對方著想，可邁向婚姻之路"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "美滿幸福，能互相包容，事事如意吉祥"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，努力完全回收"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，心想事成，可多方嘗試"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "佳，可如魚得水，適應良好，或有升遷的機會"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "初始或許不理想，不管是和解或訴訟，最終結果對自己有利"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "一段愉快豐盛的旅遊"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量安定，元氣飽滿，心情愉悅"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "地澤臨"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "一切平順，好的機會來臨，要懂得把握，便能創造更旺的局勢"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "本身有賺錢本事，財運好，偏財運也佳"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "好，男方會更有想法原則與堅持，二人一進一退，柔順相處便能感情好"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "緣份好，有共同目標，對方掌控欲較強，順從對方則好"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "好，準備的內容充實，自然會有收穫"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "好的時機點來臨，把握時機，好好發展"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，配合公司長官要求，與同事相處謙虛，則一切吉祥"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "可順利，以自己出面處理為吉，和解為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可以，按照計畫進行，一切順利"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "省思自身的身心靈狀況，若注意與調整，自然也會得到好的回應"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "地火明夷"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "不好，須小心保護自己，有自律及耐心的等待機運好轉"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，逐漸走下坡，需節省開銷，以免負債"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "不好，真心換絕情，要再找更適合對象"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "經營不易，多阻礙，很辛苦，須設法撐過，否則會有離婚風險"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運不好，成績不佳，落榜機率高"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，諸事不宜，要再靜待時機"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，希望渺茫，要打消念頭，宜暫時任勞任怨，等待時機"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況極不理想，勁量減輕傷害，結果不樂觀"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不利外出，會有意外傷害，建議取消"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "狀況不好，內在靈光黯淡，須尋求保佑加持或心靈老師協助"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "地雷復"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "一元復始，萬象更新，最壞的時候已經過去，一切逐漸好轉中"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好轉中，錢財開始回流，做好理財計劃會有幫助"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "與之前情人有複合的可能性，或戀情有逐漸好轉升溫的跡象"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "夫妻感情有新的機會可以相處，可破鏡重圓，對感情有新的經營計畫會有幫助"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "漸有進步，可重新來過，重考成績會更好"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，照著新擬好的計畫進行，勿躁進，慢慢成長"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "及，不要操之過急，站穩腳步好好表現即可"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "本以為要輸了，突然有了轉機"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "旅遊可盡興，但若為出差，則需二次前往方圓滿"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量如同春回大地般，慢慢回復生機，一切越來越好"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "地風升"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "由下往上逐漸上升，運勢漸旺，循正道，依照計畫，扎根越深，越穩定攀向高峰"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，財富陸續增加，以小財居多，大財尚未出現"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "感情持續增溫，穩定發展，可以進入更親密階段"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "感情好，能互相體諒包容，感情溫度持續昇華"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "好，成績理想，有所進步，金榜題名"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，確定基礎穩固，則可以開創新事業，新產品"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可得到更多的薪水或更高的職位，有貴人相助"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "逐漸佔有優勢，仍須小心處理，不能大意"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "順利，會有好的成果與收穫"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量逐漸提升中，狀況良好"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "地水師"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "挑戰來臨，過程會辛苦，若能善用人才，循正道而行，最終則能化險為夷，先苦後樂"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "初期不順，但有財有庫，妥善理財可漸入佳境"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "問題雖多，不輕言放棄，變數大，感情不順"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "不樂觀，男方容易較花心，看似和平，卻慢慢醞釀，亦走向分開局面"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "在及格邊緣徘徊，可能低空飛過，需要更認真與仔細準備"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "目前不宜，宜守不宜進，仍需要多加磨練"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "小心派系鬥爭，尋求貴人協助，若有心共嘬，與長官拉近距離對工作有幫助"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "互不相讓，以強硬態度與自信面對才會獲勝"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不利，恐遇到賊擾亂而造成損失，眾人同行為佳，建議取消外出"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "需有一個清楚的身心靈安頓目標，才能安排計劃，逐漸調整身心靈能量，達到更好狀態"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "地")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "地山謙"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平順，穩定中成長，具備實力又能夠謙遜之人，更能得到眾人支持"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "有小財，大財較難進，儲蓄可累積財富"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "以禮相待，吉，謙遜雖為美德，但勿過度導致自信不足"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "美滿姻緣，知足常樂，遇事勿爭，能包容對方，率先低頭，衝突便不會發生"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運不是很理想，還有很多需學習之處，要求自己，穩定中求進步"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，但仍需準備妥當，不躁進，放下身段，虛心求教，得貴人相助會更好"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "能順利，不宜躁進，廣結善緣，易得貴人相助"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "得饒人處且饒人，謙受益，滿招損，勿久拖，有利和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "順利，能有許多收穫，謙虛易交好友貴人"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量踏實，能正視自己身心靈狀況，時時注意調整，自然一切吉祥"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "天地否"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "諸事不順，不可貿然行動，雖有黑暗即將來臨，熬過後才可見到光明"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "極差，有風險，須注意手中現金存款，慎防劫財"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "想法不同，個性不同，恐有分離之可能"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "無法溝通，各持己見，逐漸形同陌路，走向離婚"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運不佳，成績不好，恐落榜"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不宜，諸事不順"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不順，環境欠佳，恐白忙一場"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況極不理想，諸多不利，恐會敗訴"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "諸多不利狀況，建議取消或延期"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量失衡，極不安頓，休息靜心為佳"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "乾為天"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "運勢興盛，名利雙收，鴻運當頭，但切記驕兵必敗，要更加謙虛謹慎低調，勿得意忘形，凡事見好就收"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "吉，若從事買賣業，是賣出好時機，會獲利，但野心勿太大"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "戀愛運好，勿過分執著己見，能站在對方立場為對方想為好"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "積善之家必有餘慶，男女雙方條件相當，個性均強悍，要學會包容對方，女方勿太剛強，眼光太高，否則不利婚姻"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，成績佳，不能太驕傲，要能堅持到最後一刻"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "適合，但勿一意孤行，多尊重長輩意見，可揚名立萬"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "順其自然，若找到新工作，得此掛吉。若未找新工作，則建議留在原公司，自強不息繼續努力"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "雙方各有堅持，難以溝通，需繼續努力，可據理力爭"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "適合結伴而行，勿過度放縱玩樂，居安思危則吉"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "好，每天都能妥善照顧自己的身心靈，適度的運動與努力不懈的學習上進，自然有好的結果"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "天澤履"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "前方有危險，須小心謹慎，態度謙遜，和氣待人，以柔克剛一切自然吉祥，結果便可圓滿"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "平平，都需細心評估，不可粗心大意，不要自我感覺良好"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "待以誠以禮，感情才會好，若對方強勢，以柔克剛為佳"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "緣份尚可，仍須步步小心且用心經營，若有考驗，須坦誠面對，委婉處理"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運欠佳，還有努力空間，一步一腳印，準備充足與否影響考試結果"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不是最佳時機，還需再沉潛準備一段時日"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "時機未到，在原單位繼續努力較妥"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "一意孤行帶來危險，狀況不利，建議朝和解進行"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "外出充滿危險，必須處處小心，不建議遠行"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "目前能量尚飽滿，但仍需多小心，以防外邪隨時入侵"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "天火同人"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "運勢好轉中，朋友或同事相挺，諸事吉祥"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，漸入佳境，可合資，有利可圖"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "想法相同，能理解對方，自然感情和睦"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "可以同心，同甘共苦，緣份值得珍惜"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，會越來越佳"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，事宜大家集資共同創業，生意可興隆"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可找到適合的工作，也容易得到新同事幫助，與大家關係良好"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "諸事還是以和為貴，纏訟不佳，可調解，開誠布公與對方好好溝通談判"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可結伴而行或於旅途中結交朋友，旅途愉快"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "安定，能量協調良好，繼續保持"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "天雷無妄"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "憑，以誠待人，不耍小動作，不虛偽對人，行正道正路，順其自然做該做的事，則一切吉祥"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "平，不亂投資，穩紮穩打則可度過"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "不耍花招，對人以誠，感情才會好"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "對婚姻一定要忠實，否則會有危機，甚至分離"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不甚理想，保持冷靜應試，雜念太多會影響成績"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "順其自然發展，如果已經準備好了就行動，如果還沒，則繼續觀望"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "腳踏實地，不要想太多，天下沒有白吃的午餐，先在原單位繼續努力為佳"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "認真面對，不要自欺欺人，強詞奪理，該認輸就認輸，儘早取得和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "建議取消，避免遭受無妄之災"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量狀況低落，元神靈光暗淡，可多禱告，靜心祈求涵養飽滿能量"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "天風姤"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "旺運已下滑，小心女禍纏身，造成損失，多行正道為佳"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "女姓佳，男性差，財運不穩，競爭對手多"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "女性主導，選擇對象多。男人須小心遇到多情的女人，豔遇不見得是好事"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "女性強勢，男性忍讓則順，不忍則破，也須小心不正常男女關係"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "憑，成績不理想，想法難以落實，唸書無法專心"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，眼前小利將帶往更大風險"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不宜，時機不佳，做好份內，預防小人"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "多包容，不要惡鬥，以柔克剛，小心處理"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可，有機會認識異性，但須小心處理"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "陰氣過剩，陽氣不佳，多到戶外曬太陽為佳"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "天水訟"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "不平順，須小心有是非或官司隨身，不與人爭，可以避險，保守慎行為要"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不妥，不要與他人有金錢來往，作保、借貸或投資都不適宜"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "爭執抱怨多，易有暗箭中傷，心儀對象不易追到，多聽對方想法，少堅持己見為佳"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "是非爭執多，想法嚴重不同，若要離婚，可能有條件難以談攏，而走上官司之訴訟"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績不理想，老實用功努力讀書最好，不宜偷機取巧或靠作弊得分，以免得不償失"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不宜，須謹慎保守，以免賠錢又惹上官司訴訟，避免異想天開或自我感覺良好，貿然前進必輸"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "工作環境不佳，有懷才不遇之想，凡是有阻礙，不要與人爭辯，以免越爭越嚴重"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況不好，難有好結果，只能期待平反冤枉之處，不易全身而退"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "充滿風險，恐有旅遊糾紛及訴訟，凡事謹慎，不建議遠行"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈狀況混亂，須加強定力與專注力，多休息靜心為佳"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "天")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "天山遯"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "開始走下坡，諸事以退為進，不強出頭，保守低調，再想辦法轉進，不起爭執，則可吉祥"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "經濟困難，開源困難，須先節流"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "凡事不與對方爭，要懂退避，能忍則忍方為上策"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "若阻礙無法排處，則順其自然，姻緣有破，但防離婚結局"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運不好，無法順心如意"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不宜，多充實自己，等待時機"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，易有障礙難以突破，或小人陷害諸事不順"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "以退為進，不要強爭，尋求和解之道"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不利，出非為了躲避，不得不為"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "反省自身，向自己內在尋求能量安定"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "澤地萃"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "正旺，得到大家支持，無往不利，合作創造佳績"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，可以多方面賺錢，財運滾滾"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "好，一切順利，有共同目標，關係可以很親密"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "天賜良緣，百年好合，彼此速配，最重要是有共同目標想法一起經營婚姻"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "好，能融會貫通，成績優良"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，匯聚整合各方資源，眾人合作較獨自為佳"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，會找到合適工作，許多層面資源都已備齊"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "會得到有力的證據支持，有勝算"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "能與同好一起出外旅行，一切愉快"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量圓滿，可練習氣功，吸收天地能量精華更有利自身"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "澤天夬"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "目前運勢平順，後有厄難，須隨時準備因應不時之需，謹守正道，小心謹慎"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "錢不可露白，謹防詐欺"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "兩人看法不一，意見分歧，難以溝通，維持不易"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "一方或許較任性，容易爭吵，只能保持冷靜，之後再溝通，也有分開的危機"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運不好，成績不理想，需繼續保持不斷努力"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不好，需多加準備，仔細評估後再決定"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "已下定決心則行動，若尚未決定，則不貿然行動"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "不好，恐敗訴，須釋出誠意尋求和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，易有困難障礙"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量不好，須從基本工作起，勿操之過急"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{
            coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "兑為澤"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "旺，處處充滿喜樂之情，諸事皆吉且順利，但若自滿親呼，放縱任性，將帶來麻煩與禍端，需注意謹言慎行，誠懇待人"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，感到喜悅滿足，進帳順利"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "兩情相悅，相親相愛，愛情溫度上升快"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "天賜良緣，一開始都覺得很好，但長久之計仍須務實，婚姻不可兒戲"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，心情愉悅，一切順利"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，與人合夥須以誠相待，相處越愉快獲利越多"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，有貴人相助，能找到合適且喜歡的工作"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "做一個書坊都得利開心的事，圓滿和解為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "一趟愉快的旅程，但慎防過度放縱享樂"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "心情愉悅，身心靈能量安定圓滿，一切良好"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "澤火革"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "現在是需要改革的時候，唯有改變才能創造新局，邁向好的局面"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "理財方式要修正會更好，先節流，在設法開源"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "舊有的感情相處模式需要改變，否則戀情恐有喪失之象，也暗示可期待新戀情產生"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "相處模式需大改革，若真走不下去，離婚反而是好結果"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "修正準備方向，並改變學習態度，才有理想成績"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，必須有全新的思維，突破僵化，以新產品搶攻市場"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，此時改變與革新正是時候"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "時機到來，改變訴訟策略，出其不意，伺機反擊"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "有改變或更換目的地之可能"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "必須改變對身心靈的看法，並且改變生活作息習慣，才能累積好的能量"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "澤雷隨"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "順應時勢，跟隨成功人士，自然容易成功，隨順眾人需求，也容易得到尊重與支持，不一意孤行，便可吉祥如意"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "平，交際應酬多，財富會快速銳減，須謹慎理財"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "愛到了就全然投入，比較辛苦，全然順存對方佳"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "嫁雞隨雞，嫁狗隨狗，要能順從對方，自然容易平和相處，若能有計畫用心經營更好"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "請教前輩或師長經驗較好，若堅持己見，隨意準備則易失敗"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "比起自己獨自創業，更適合跟隨成功人士，有詳細計劃經營更好"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，順應時勢環境改變，不要強出頭，隨和則吉"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "聽從專業律師意見判斷為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可，隨順因緣，建議跟團或有經驗朋友一同前往"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量尚可，跟隨身體運轉機能進行生活作息，才能維持良好狀態"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "澤風大過"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "現在的處境困難，壓力高，事情超過自身的負荷能力，檢視現狀，依自身能理評估計畫方能脫捆"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，花費可能會過度，需強迫自己節省"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "交集太少，已帶來沈重的壓力，需重新評估相處之道，否則很難進行"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "關係不好，難以溝通，或有出軌狀況，再無魄力改變，將以離婚收場"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不理想，表現會失常，要多仔細檢驗答案"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不好，目前做員工比做老闆合適"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不易，無法看清是太，容易做出錯誤決定"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "勝算不大，須妥善請教專業，減少傷害"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "適不建議外出，事態超出安排而易有意外與危險"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "已過度消耗自身能量，恐過勞，需好好休息恢復"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "澤水困"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "困難重重，諸事不順，暫時退後，以退為進，不可胡亂瞎拼"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，感到困苦，投資被套牢，錢財受困"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "有阻礙，感情不好，不無謂堅持，隨緣不強求"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "貧賤夫妻百事哀，經濟狀況不好，爭吵多，難維持感情"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不理想，下次再繼續"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，危機未必是轉機，必須耐心等待機運到來"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，難離開現職，也難找到好工作"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "難以脫離官司訴訟之惡夢，恐有牢獄之災"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不利外出，恐被事情困住無法出發，多有障礙"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量不好，處在困境中，多有匱乏，需尋求他人協助以突破困局"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "澤")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "澤山咸"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "諸事吉祥，許多事情如願進行，只需防交友不慎"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "尚可，慎防交際費用過高"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "好，有情人終成眷屬，能玩在一起，相處愉快"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "相處愉悅，能夠維持婚姻的熱度與浪漫"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "若有感情對象或喜歡的人，則讀書無法專心，成績自然不佳，若無對象，則成績進步"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "適合，會如願發展，照自己計劃進行"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，須謹慎，請教他人或專家建議，才能做出最佳判斷"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "互相體諒對方狀況，而能和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "收穫良多，旅程愉快，與另一半或朋友出遊，可增進感情"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈感到和諧平靜，能量飽滿"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "火地晉"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "如旭日東昇，有貴人長輩幫助，多充實內在更好"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "旺，財源廣進，超乎預期"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "可期待熱戀，但勿被愛情沖昏頭"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "天作之合，很速配的姻緣"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，願望成真"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，諸吉，，再多檢視計畫，確實落實更好"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "需再評估，原單位有機會晉升，會有好發展"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "把握有利時機，速戰速決，不拖延，否則怕有變"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可以盡興，或延長旅程，玩得更多"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能力飽滿，可邁向更高層次"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "火天大有"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "撥雲見日，一掃陰霾，如日中天，萬事吉祥亨通"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "大有進帳，偏財運也旺"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "感情好，稍嫌高調，易受人矚目，不指高氣昂會更得他人祝福"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "門當戶對，郎才女貌，天作之合，婚姻好"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運佳，成績好，可金榜題名"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "大有開創新事業的機會，享受努力付出的結果"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "順利，能力良好，易得主管賞識"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "結果順心，可勝訴，圓滿解決"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "順利，旅程收穫豐富，小心過度花費，一且吉祥"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量飽滿，身心安定，心靈愉悅"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "火澤睽"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "困頓低落，時運不佳，諸事不順，容易捲入是非"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，爭執會失去更多，與財運背離中"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "意見不合，看法不同，產生對立"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "看法不同，恐貌合神離，分分合合，速配指數低"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，準備方向與重點可能與考試不同，需多謹慎小心，好好準備"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不好，想法與現實狀況不同，計畫需修正，日後再尋找機會"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，換來換去可能都不適合，不必急著異動"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "不利，須盡快找到和解之道"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，恐有是非，無法愉快圓滿"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量極度不安定，要正面寬心面對問題，後尋找心靈導師協助"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "離為火"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "旺，如日中天，但須依靠真材實料才能長久，不驕傲，需謙虛，得他人支持更好"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "帳面漂亮，但可動用資金未必充足"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "感情關係火熱，可能有多數對象，需專注一對象，以免玩火自焚"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "外表看起來感情良好，但均剛強愛面子，要好好溝通，感恩對方才會好"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績不錯，易成為注目焦點"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "必須確定有好結果或特殊產品優勢方能創業，需有人主導協助"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "慎選公司主管，跟對人才會往上"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "謹慎處理，步步為營，小心突發狀況，尋求專業"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "尚可，小心超出預算，可能有桃花運，但須謹慎"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈互相依附成長，持咒念經打坐都可以讓自己的能量更好"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "火雷噬嗑"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "目前狀況不好，有困境與考驗待突破，必須鼓起勇氣，以更大的力量與決心面對，咬牙撐過便能克服難關"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "有財，但轉得頗辛苦，都是一點一滴拼來的"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "有許多障礙或有情敵，必須堅持到最後才能成功"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "口角是非多，要有更大包容與耐心，保持冷靜，不要情緒化，不能衝動，困境終會突破"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "有阻礙在前，一開始不是很順，有必勝的決心和毅力，才會有好結果"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，嚴格的管理，堅定的意志可以開創新局"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "有困難，少說多做，用行動證明，勇往直前為佳"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "需用更強氣勢與強硬手段才能如願獲勝，但不要過度得理不饒人"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "容易有口角是非或與人爭執，不建議遠行"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量不安頓，必須強硬要求自己面對問題"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "火風鼎"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "好運來臨，諸事吉祥順利，能結合力量成就大事"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，先前付出努力，現在都有收穫，有貴人相助"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "關係複雜，恐有多角戀情之項，專一為佳"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "彼此能夠支持對方，互助互信，與另一半家人同住者，要學會保有彼此空間"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，成績良好，滿意"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，開創新局時機到了，合夥較獨資佳"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，順其發展，努力付出可累積成果"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "可以得到多數支持與相挺，勝算很大"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "順利，與大家出遊和樂融融"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈狀況各安其位，能夠安頓一切良好"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "火水未濟"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "不好，艱難困苦，只能耐心等待好時機到來，現階段，很難得到任何協助"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，應收帳款收不到，本來預期的收入進不來，要多思考理財策略"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "不好，容易陷入一相情願或單戀狀況，必須修正態度，慢慢發展關係"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "狀況不好，溝通有阻礙，必須冷靜沈著以對，不可隨情緒過度起伏，或衝動行事"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "現階段不好，盡全力，對己無悔即可"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，目前時機不對，成功希望渺茫"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不可，缺乏貴人相助，要等待下次機緣再行動"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "無法定讞，持續膠著狀態"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "計畫可能生變，行程會有異動，需三思"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量失衡中，多喝水，多休息，尋求心靈導師協助"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "火")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "火山旅"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "起伏不定，動蕩不安，此刻能求得安定就好，多聽他人意見，做萬全準備才會好"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "有小財，但理財混亂，支出恐過多，不要衝動花費，須知節制"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "可能是長距離戀愛或內心的距離過遠，感情不易經營，也不夠穩定"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "聚少離多的婚姻關係，或時常搬家，居無定所，婚姻不夠穩定"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "較適合到外地考試，考上機會相對較高"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，顛沛流離之項，貿然創業，只會失敗收場"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不可，公司恐有變動，求穩定為上"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "官司會持續拖延，要設法儘早處理尋求和解之道"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "動蕩不安，馬不停蹄的行程，建議取消不要前往"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量不安定，煩悶，可外出旅行，尋求平靜知道"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "雷地豫"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "如春暖花開，充滿生機，是需時時謹慎而行，事先防範，便能確保好運，否則過於安逸放鬆，厄運來時，恐難應變"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "良好，先吉後凶，，眼前的好不會持久，有逐漸下滑之勢，須妥善理財守財"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "現在感情狀況良好，但若忽略對方感受，無規劃，恐下滑"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "緣分很好，女人比較會照顧男人，若男人有更多責任感更好"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，成績佳，有先做好萬全準備，自然成績符合理想"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可以，做好周全準備，照計畫實施，吉，可以照顧好員工"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "佳，環境適合自己，心情愉快"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "態度不要太強勢，冤家宜解不宜結，可和解也很好，或期待判決結果"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "按照計畫進行，一切愉快順利，但勿過度放縱"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量飽滿，狀況良好，仍注意涵養能量，勿過度放縱而耗損"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "雷天大壯"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "老，聲勢漸旺，避免過恃己強，衝動，招致損失"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "尚可，但需謹防無節制的花費，以免財富減少，而有衝擊"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "若只在乎轟轟烈烈，則難以持久"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "用多少心思經營婚姻，就會有多少成果，預防過度爭吵，以免傷害感情"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，多花時間準備才是正道"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "尚可，但慎防雷聲大雨點小，持續長久經營，才是成功的關鍵"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不宜，自身仍有許多需充實與準備之處"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "避免得理不饒人，只以氣勢壓人，宜尋求和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "旅途豐盛熱鬧，但仍需觀察計畫是否確實，多加小心注意"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "現階段身心靈能量飽滿，但不可志得意滿，隨意揮霍，反招耗損"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "雷澤歸妹"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "想法過多，時機未到，諸事難順，若被慾望牽引，則會付出代價，凶"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，實際狀況與想像中不同，使用失當會有財務缺口"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "慎防不正常男女關係，被慾望勾引會有凶險之象"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "女子較強勢，強求感情不會順，婚姻關係不對等"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "平，有風險，必須盡快調整，以免失常"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，時機未到，經營策略亦不佳，需修正並持續等待"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不可，會白忙一場，若動機不純，則不會順利"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "焦點已經模糊，必須回到原始的重點重新討論"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "波折多，不建議外出旅行"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "欠佳，必須降低慾望，以免耗損精氣神，轉移目標，靜心練氣為佳"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "雷火豐"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "運勢極旺，幸福美滿，如日中天，一切吉祥，但若過度輕忽，放縱過頭，則好運難持久，需有危機意識，不致不慎鬆懈"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，努力都有收穫，財源滾滾"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "雙手互動良好，盡享愛情甜美果實，可邁向婚姻"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "彼此相知相惜，姻緣極好，一切如意"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，小粗心亦影響不大，一切皆能如意"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，順利且成功，會有良好收穫，做好規劃，不志得意滿"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，才華會得到上司賞識，有升官機會"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "氣勢正旺，把握有利時機，一鼓作氣，打贏官司"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "旅程有收穫，滿載而歸，但花費亦不少"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量飽滿，身心靈安頓，精神富足，一切吉祥"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "震為雷"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "表面很好，實際變化大，需戒慎恐懼面對問題，顧全大局，按部就班，穩重而行則可逢凶化吉"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "有意外漏財的風險，突如其來，難以防範，須時常儲蓄為佳"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "彼此都嗓門大，情緒化，易怒，爭執多，但無隔夜仇，能冷靜應對，不衝動可維持感情"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "有坡折，情緒容易隨對方起浮不定，若無法冷靜理性相處，則易離婚"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "平平，自以為考不錯，成績出人意料"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "尚可，按照計畫與應變對策，務實穩定的開業"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不可，以不變應萬變，變動大，求穩定為上策"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "雙方態度都很強硬，需有耐心尋求和解為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，恐有突然的意外到來"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量不平衡，負面情緒高漲，可至山上或海邊盡情宣洩，再好好靜心調養"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "雷風恆"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平平，能夠長久穩定的得到幸福，一切的好運，都需要時間去經營與累積方可成就"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "尚可，積少成多，努力越久收穫越豐富"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "長久交往的穩定關係，熱情較淡為美中不足處"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "積天賜良緣，維持目前的關係與相處模式可長久"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "有恆心可成事，準備長就，自然成績理想"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "目前不宜，仍需準備，多觀察情勢"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "新工作還不清楚的當下，不宜變動"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "以靜制動，要有長期訴訟之準備，最後結果偏吉"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "有恆心可突破障礙，順利成行，旅程圓滿"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量安定，可維持長久的平衡"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "雷水解"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "逐漸轉好，苦難已結束，可以積極進取，穩定向前，創造好運"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好的狀況得以化解，財運漸佳，把握佳機，可爭取更多財富"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "若有誤解可以冰釋，感情好轉，障礙可以化解，不要逼迫對發，躁進反而不好"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "不好狀況可以化解，經歷失去危機，才懂的珍惜"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運尚可，可以一吐怨氣，尚有進步空間"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，找到解決問題的辦法，突破障礙，開創新局"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，針對問題，提出正確的解決辦法，則可照願望前進"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "冤家宜解不宜結，建議朝向和解為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "及，平安愉快，水上活動需謹慎小心"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身鐔零能量得到紓解，學會釋壓會有幫助"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 1, coin[4]%2 == 0, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "雷")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "雷山小過"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平，做事姿態不要太高，需保守低調，不與人爭，則吉"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "小有缺失，收支不平衡，透支稍多"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "不好，被愛情沖昏頭，投入過多，要求對方過多，反而會傷害感情，冷靜相處為佳"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "虛幻的美夢破碎，需冷靜思考，兩人是否適合走下去"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考試不理想，題目超出準備範圍或自身能力"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，時機不對，很多狀況不順利，要對自身能力有所瞭解，不要做超出自身能力之事"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不宜，新環境沒有想像中好，諸事不順"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "勝算不大，建議以退為進，必須修正策略，少賠就是賺，才是較妥善的處理方法"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "會有超乎預期的事情發生，建議取消行程"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量受損小過度，但免強可承受，須謹慎作息與運動，先好好休息為佳"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "風地觀"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "不好，風吹大地，塵土飛揚，亂無頭緒，須先反躬自省，觀察局面，再行判斷"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "財運不穩，需找出收支不平之原因，予以修正"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "相處時間要拉長，不要太快投入感情，多觀察再做判斷"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "表面平和，但相處模式需調整，給對方多些空間，易有經濟壓力"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "可能在及格邊緣，考運欠佳，要多用心準備"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不宜，靜觀其變，等待更適合的時機出現"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不宜，須更了解細節，才能找到適合自己的"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "靜觀其變，謀定而後動，再進行溝通"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "多收集資訊，嚴加判讀，不可貿然出行"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "多方面觀察自身能量，練習自我觀察的能力"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "風天小畜"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "萬事俱備，只欠東風，但仍需等待，運勢才會逐漸轉好"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "積少可以成多，儲蓄可以累積財富"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "熱度隨時間增溫，戀情漸入佳境"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "眼前的不順與阻礙不是絕對，妥善溝通，用心經營，時間會證明你的用心和努力"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "有風險，可低空飛過，要成績好，就需準備，不宜臨時抱佛腳"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "目前不宜，再多準備與累積創業基金為佳"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "仍須多培養自身實力，不建議立即轉職"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "會拖延纏訟一段時間，此時不宜有行動，耐心等待後再思考解決之道"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "必須做好萬全準備才能出發，否則旅途恐不順，影響旅遊心情"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量停滯期，需耐心涵養能量，多靜坐為佳"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "風澤中孚"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "待人以真誠，運勢才會吉祥，反之則凶"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "有正財，無偏財，以誠相待，賺取合理利潤"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "真心相愛，以禮相待，自然有好結果"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "天作之合，姻緣良好，彼此能夠真心對待並信任對方，感情可長久"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "勿投機取巧或作弊應試，守本分，誠實應答則好"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，以真誠的心帶頭與他人合作，自然順利，可得他人支持"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，坦誠以對，會有貴人提攜"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "誠實面對問題，拿出誠意，坦然面對會有好結果"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可以，旅途愉快，會有開心的收穫"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能夠適當涵養能量，一切吉祥，可多打坐靜心維持好狀況"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "風火家人"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "好，家庭和樂，與同事朋友相處如家人，人和佳"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "尚可，能得貴人幫助會更好"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "像家人一樣的關係，熱情稍嫌不足，可一同生活"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "男主外，女主內，婚姻家庭關係和樂"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績好，一切離不開家人的支持與鼓勵"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，以事業為家，全心投入發展經營"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不可，不容易離職，原單位連結很強，不易切斷，須重視情義倫理，方得貴人幫助"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "用包容心去處理，事情容易圓滿解決"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可以，與家人同行可有愉快假期"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量和諧安定"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "風雷益"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "順遂的好運開始，一掃之前陰霾，也是開創的好時機，易得貴人相助，運勢亨通"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，從虧損走到獲利，不失可累積更多善緣福報"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "兩人感情趨向成熟，相處良好，邁入親密階段"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "關係良好，和樂融融，相處愉快，感情順利"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，成績理想，一切順遂"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，當機立斷，堅定向前即可"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，有貴人，可找到適合的工作，一切順心如意"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況良好，有利訴訟結果"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "可以，順利且有收穫的旅程"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量飽滿穩定，分享給他人更好"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "巽為風"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平平，只有小運，跟對領導者，以謙卑順從態度行事，便可以獲得好的回報"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不求大利潤，找對合夥人，跟著別人一起賺"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "態度謙遜，多聽他人意見，真誠相待才會好"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "積沒有共同目標的婚姻關係，很難走長久，可向長輩詢問經營之道，協助關係融洽"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運欠佳，成績吊車尾，有風險"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，不能貿然投入，要虛心求教，在多加充實自己專業與本職學能"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不順，可請教長輩意見，再做判斷"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "隨順應變，不論局勢如何，謙遜的態度有助於爭取和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "跟團旅行尚可，自助旅行慎防桃色糾紛"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量不好，慎防陰邪入侵或傷風感冒，須謹慎照顧身體，涵養能量才是"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "風水渙"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "逐漸趨向不好，好運漸漸渙散，需意志堅定，果斷積極，才有機會版回頹勢"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "財有漏洞，逐漸渙散流失中，無法累積財富"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "關係不再濃烈，熱情漸退，沒一開始愛對方"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "出現障礙，無新鮮感，已習慣彼此模式，難有火花出現，若繼續冷淡，恐會離婚，可尋找長輩或彼此朋友，設法協助溝通協調"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "精神無法集中，考試失常，成績不好"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，無法正確判斷，需再冷靜思考，日後再評估可能性"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "工作熱誠已磨損殆盡，可以轉換跑道，轉換心情"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況不理想，一在被拖延，可能會陷入纏訟中"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "建議取消外出，有危險，有人迷失走失之象"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量渙散，一切不好，要能夠睡好，吃飽，好好涵養身心靈能量，不要過度耗損"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "風")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "風山漸"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "一切逐漸好轉，充滿光明前途，按部就班發展於前進則吉"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "漸漸有小額入帳，要好好守住，才能累積財富，須謹慎理財，將錢花在刀口上"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "戀情逐漸加溫，慢慢平順進展中，可以有進一步的關係"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "關係良好，彼此相知相惜，越來越懂對方，不須躁進，用心經營感情則佳"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運好，成績有進步"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，一開始雖然辛苦，會漸入佳境，不要急，穩定成長為佳"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，或許異動還需要時間，慢慢會有好消息傳來"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "情勢越來越好的跡象，勝訴機率大增"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "順利，旅行或許會比預定行程更遠或更久"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量漸漸好轉，持續恢復，請繼續保持細心調養"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "水地比"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平和穩健，眾人相挺，貴人來助，諸事吉祥"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "順心如意，財運旺，大發利市，要能持續妥善理財，不要放縱而疏忽"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "對象可能很多，若專注一人，可能論及婚嫁"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "夫妻同心，齊力斷金，任何困難都能突破"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績優良，與同學一同討論更有幫助"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "佳，找貴人或朋友幫忙，可以合夥開創事業"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "需有貴人相助方可成，人脈經營好，可留職，未必一定要轉職"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "雙方各退一步，進行和解，才是彼此最好的選擇"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "適宜找朋友一同前往，會有愉快的旅遊經驗"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量和諧，身心靈能量有所提升"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "水天需"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "時機未成熟，不可躁進，需更有耐心等待，莫貪近利以免全失ㄝ等待貴人出現，機緣成熟"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "需等待時間慢慢累積，不要妄想一係致富，當下莫強求"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "需要時間慢慢經營，愛情長跑，可以再多觀察彼此是否適合，不要太快投入感情"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "還在磨合時期，初期阻礙或許較多，需要有耐心恆心堅持下去，後期才可漸入佳境"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考試成績不理想，需多加油努力，下次會更好"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "需要培養更多實力、累積更多能量再行動，目前不宜創業"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不是最佳時機，容易碰壁，繼續等待"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "過程較花時間，但結果可期待"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "時間未到，要再等一段時間才好成行"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "現在能量狀況不甚理想，需要好好調養，之後才會比較充足"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "水澤節"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平，凡事量力而為，行事應深謀遠慮，三思而行為佳，需等待機會"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "節流為主，現階段能守住錢財，節流重於開源"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "熱情不夠，過於理智，多些激情，對感情有幫助"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "給對方空間，不要限制太多，否則傷害彼此感情"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "平，有多少努力，便有多少收穫，需加油"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，量力而為，創業計畫需再周延思考"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不妥，要再多充實自己，等待更好的機會"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "凡事不可急躁，需有耐心處理，不擴大訴訟案件，尋求和解為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "建議取消，須節制，旅程計畫恐有變，很多事要改變思維"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "尚可，需適度節制，偶爾放鬆一下，別因過於嚴謹，增加自身壓力"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "水火既濟"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "所求皆遂，過去的努力，接近圓滿成功，當下走好運，但盛極必衰，必須採取防範措施，不可自滿或輕忽放縱，安分守己才能維持好運的長久"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "短期內財運好，需盡力維持，否則來得快去得快"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "開始好，熱戀成熟，修成正果，可以走向婚姻之路，但之後才是關鍵，仍需繼續努力經營，否則水火相剋，恐終破散"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "關係良好，相處和諧，配合良好，平淡踏實，但難以長久，需防範未然，努力經營，可化險為夷"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運尚可，努力很久，有望成功"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可，需做長期的規劃，眼前的好無法持久"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "可，近期會有好消息"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "速戰速決，不再拖延，否則不利"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不要到太遠的地方，近處旅遊能休息放鬆即可"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "目前還不錯，但仍需謹防過度耗損，安分守己，不過度放縱則吉"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "水雷屯"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "諸事不順，充滿困難與考驗，宜保守，累積更多實力，按部就班，堅持之後有成果"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "困難，目前不好，須謹慎用錢，出多入少"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "陷入困難，需多溝通，有耐心為吉，容易單相思，感情運不佳"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "不佳，感情充滿考驗，互信基礎不夠，必須靜下心好好溝通，有分道揚鑣之勢"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "目前考運欠佳，考試成績恐不理想"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "創業困難，不要貿然前進，失敗機率高"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不理想，力不從心，能有一份工作，求溫飽優先"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "有時吃虧即是佔便宜，此時少爭就是贏，不需再抗辯"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "目前不是適宜外出的好時機，過些時日再計劃"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "雖然對身心靈內在能量有所感受，但還是難免會有理智判斷，還在細細體會能量中"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "水風井"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平平，平安就是福，安於現狀即可"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "平，沒多少錢可花用，需節省，精打細算"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "不可操之過急，慢慢進展為佳，重心不只在感情"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "對他人付出更多，最後也會得到更多，先求自己多為對方付出"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "憑，不可安逸而缺乏努力，時刻自我要求勤勉"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "時機不適合，現在不可"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，時機不對，保持現狀，雖平靜但可生活"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "趁著優勢在己方，盡快與對方和解為宜"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "建議暫時打消念頭，先不外出較好"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量弱需要逐漸提升，需多靜心涵養，可閱讀心靈相關書籍或尋求心靈導師協助"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "坎為水"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "不好，層層危險難關相隨，可能受騙，進退兩難，身心俱疲，只能以堅定意志撐過"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，小心詐騙，起貪念易因小失大，保守為佳"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "易受情緒影響，一路辛苦，不易堅持"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "不被祝福，彼此衝突多，難溝通，只有冷靜，尋找堅持的信念，才有轉機"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "考運差，成績不理想，只能等待下次機會"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，充滿未知危險，只會虧損，不能太天真，否則後果嚴重"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，凡事謹慎小心，步步為營"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "困難重重，沒有勝算，放低姿態，尋求和解最好"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "有危險，不建議外出，玩水易有意外，無法盡興"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "狀況極差，需多注意休息，尋求涵養能量的方法或尋求心靈導師協助"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 1, coin[5]%2 == 0{coinUpImageView.image = UIImage(named: "水")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "水山蹇"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "運勢受阻，窒礙難行，陷入進退維谷的境界，別胡亂拼鬥"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，破財劫財之項，恐有負債，尋求長輩與專家協助，但也要小心被騙"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "有阻礙，考驗多，難以突破，恐分手"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "不好，遇到瓶頸，繼續維持會很辛苦，要知道自己要的是什麼"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，考運差，難有好表現"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不宜，困難重重，貿然創業，將陷入經營困境"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不易，光設法維持目前工作已困難"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "敗訴機率高，恐有牢獄之災，須盡快和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不例外出，阻礙多，改期為佳"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量不好，氣血恐有阻礙不通處，需多練動功，多運動，打通氣血循環"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "地")
            coinResultNameLabel.text = "山地剝"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "不好，本來的好運逐漸遠離，諸事不順，只能維持現況，等待厄運過去，謹慎保守為佳"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "有劫財之風險，財運不好，漏財逐漸嚴重，要設法守住資本"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "小心遇到不好的對象或被仙人跳，劫財劫色，暫時勿把感情放第一位"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "不好，女方較強勢，需多溝通為對方找想，恐有離婚之風險"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，成績有退步，甚至名落孫山"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，勿孤注一直，只會越輸越慘"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不好，會孤立無援，甚至白忙一場，忌意氣用事"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "節節敗退，一步輸步步輸，和解亦困難，恐付出大代價"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，會被剝削的旅程，也不適合上山"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量逐漸消耗，須盡快找出原因，徹底改變，調整身心靈安穩狀態"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "天")
            coinResultNameLabel.text = "山天大畜"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "好，多多培養實力，可大展鴻圖"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "好，財源滾滾來，可以累積大財富"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "付出的努力逐漸會有收穫，感情關係可更親密"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "好，雙方都能為婚姻付出努力並用心經營"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績好，累積的實力可得到發揮"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "好，準備充分，萬事俱備"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "還要再等待機會，觀察一陣子再行動為佳"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "要想完全化解是非，仍需等待，多研究案情，便可找出致勝關鍵"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "有完善豐富的計畫，旅程愉快"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "能量良好，有確實靜心涵養"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "澤")
            coinResultNameLabel.text = "山澤損"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "事倍功半，當下運勢不好，付出多有損失，需等待，日後才有收穫"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，持續虧損，須謹慎理財，不建議投資，損失機會大"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "感情付出較對方多，對方未必領情"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "夫妻相處需互相包容，凡事多禮讓對方，可平順"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，無法發揮平常水準，再多充實，小心應試"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，並非每個人都能當老闆"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不宜，留在原單位為佳，慎防得不償失損失更多"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "不利，低姿態迅速尋求和解為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，多有損失虧損狀況，諸多意外難防"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量持續耗損中，該轉換念頭，轉變對身心靈能量的觀念，尋求心靈導師協助"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "火")
            coinResultNameLabel.text = "山火賁"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "外強中乾，虛有其表，看起來運勢不錯，事實上並非如此，處事必須務實才會好轉"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，但看起來光鮮亮麗，似乎有財，事實卻非如此，有財損之風險"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "當下看起來很好，但只重視外表的感覺，缺乏內涵，自然難以長久"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "必須以誠相待，不可欺騙對方，多製造浪漫可加分，但須適度"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績普通，考運欠佳，不可投機取巧，需腳踏實地力準備"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "可以，但必須穩紮穩打，不要只重視當老闆的名，要腳踏實地"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "需多小心，外表光鮮之物，實際未必相同，多觀察多研究多詢問，再做判斷"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "現在看來不錯，宜迅速和解，不宜久拖"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "勿被過度包裝的行程吸引，仔細計畫前建議暫緩"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "看起來能量充足，事實上缺乏尚多，繩需盡力涵養自身能量"
            }
        }
        else if coin[0]%2 == 1, coin[1]%2 == 0, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "雷")
            coinResultNameLabel.text = "山雷頤"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "平平，養精蓄銳，現在是需要調養身心的階段，謹言慎行即好"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，進帳有限，須保持正道而行，不投機賺錢"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "以冷靜的態度相處，急不來，需要時間培養並多認識彼此"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "無經濟基礎的婚姻，容易遇到考驗，有經濟基礎才有安全感"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "平平，還是要靠自己老實的努力"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "時機未到，暫時不可貿然創業"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "尚不適合，先求溫飽，能平平度日已然不易"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "恐有纏訟，需親力親為，以和解為優先考量"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "會是一趟不錯的美食之旅"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "尚可，還需好好頤養階段，可多打坐靜心"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "風")
            coinResultNameLabel.text = "山風蠱"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "百廢待舉，運勢不好，須保持冷靜，理出頭緒，大刀闊斧，徹底改革，否則只會更糟"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "理財混亂，財運不好，收支不平衡，須盡快請人幫忙，以免越虧越多"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "很多舊的相處模式造稱今日較差的局面，若想堅持，則需徹底改變"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "有外遇的可能性，障礙很多，彼此須坦誠相對，改變壞習慣才會好轉"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，希望渺茫，請期待下次考試"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不適宜，很多狀況不好，不宜冒進，再多思考多準備一段時日"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "現階段必須有新作為，若原單位已經很糟，轉職為佳"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "一切不吉祥，和解都可能難以達成，只能盡量設法減輕傷害"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "危險，旅途充滿誘惑和危機，需處處小心，不出國為佳"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量嚴重失衡，有外邪入侵風險，多曬太陽，從事有氧運動，可找老師協助安頓身心靈狀況，積極尋找能量恢復方法"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 1, coin[2]%2 == 0, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "水")
            coinResultNameLabel.text = "山水蒙"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "事情不順，最大的障礙可能是自己，局勢不清，混沌未明，容易做錯判斷，要多虛心學習，多聽長輩或專業人士意見較好"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "理財欠佳，財運不好，需仔細評估收入與支出，才不會虧損較多"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "一切還在啟蒙階段，還有很多學習的功課，兩人都可能不甚成熟，感情易失敗"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "吃得苦中苦，方能感情好。可能不懂對方心中想法而造成誤解爭執，妥善溝通為佳"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "成績不好，方向若錯誤，努力也難以有好狀況，可請教前輩意見指導"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "前途茫茫，不宜貿然創業，還需要多學習多充實所需技能一陣子"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "很多狀況可能判斷錯誤，不如預期，建議繼續等待下次機會"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "狀況不明朗，需請專業律師幫忙為佳"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "資訊收集尚未完整，會有迷路風險，可請專業導遊協助"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "身心靈能量不穩定，可多參加心靈課程，以便學習更多心靈安定方法"
            }
        }
        else if coin[0]%2 == 0, coin[1]%2 == 0, coin[2]%2 == 1, coin[3]%2 == 0, coin[4]%2 == 0, coin[5]%2 == 1{coinUpImageView.image = UIImage(named: "山")
            coinDownImageView.image = UIImage(named: "山")
            coinResultNameLabel.text = "艮為山"
            if coinChoice == "總體運勢" {
                coinResultLabel.text = "停滯不前，運勢低迷，可以靜心思考，堅定信念，等待良時到來才有轉機"
            }else if coinChoice == "財運" {
                coinResultLabel.text = "不好，才氣無法流動，資金受阻，很難有進帳"
            }else if coinChoice == "感情" {
                coinResultLabel.text = "關係沒有進展，裹足不前，不要抱持期待，可以尋求更適合的對象"
            }else if coinChoice == "婚姻" {
                coinResultLabel.text = "關係到達冰點，難有發展，冷靜思考彼此的可能性，好好溝通，否則內心會相行相遠"
            }else if coinChoice == "考試" {
                coinResultLabel.text = "不好，考運差，難以突破障礙，提不起勁努力"
            }else if coinChoice == "創業" {
                coinResultLabel.text = "不可，前方困難重重，大環境差，需等待時機"
            }else if coinChoice == "轉職" {
                coinResultLabel.text = "不可，計劃趕不上變化，不要被外在影響"
            }else if coinChoice == "訴訟" {
                coinResultLabel.text = "缺乏希望，再上訴仍有敗訴可能，盡快尋求和解"
            }else if coinChoice == "外出旅行" {
                coinResultLabel.text = "不建議外出，或是翻山越嶺的行程會很辛苦"
            }else if coinChoice == "身心能量" {
                coinResultLabel.text = "不好，有嚴重氣血循環不良問題，脊椎可能不好，可從整脊下手，陸續恢復能量，並尋求心靈導師協助"
            }
        }
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinResultArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinResultArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        coinChoice = coinResultArray[row]
    }
    var coinChoice = "總體運勢"
    let coinResultArray = ["總體運勢","財運","感情","婚姻","考試","創業","轉職","訴訟","外出旅行","身心能量"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
