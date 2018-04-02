import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var index: UILabel!
    
    var direction = 1 // direction이 1이면 증가 0이면 감소 구분
    var counter = 1 // 증가나 감소 여부
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 첫번째 이미지를 로드함.
        myImageView.image = UIImage(named: "frame1.png")
        index.text = "1"
    }
    
    @IBAction func imageUpdate(_ sender: Any) {
        //counter가 5이면 감소시키 위해 direction을 0으로 변경
        if counter == 5 {
            direction = 0
        }
        //counter가 1이면 증가시키 위해 direction을 1으로 변경
        else if counter == 1 {
            direction = 1
        }
        //direction이 1이면 counter를 1씩 증가
        if direction == 1 {
            counter += 1 }
        //direction이 0이면 counter를 1씩 감소
        else if direction == 0 {
            counter = counter - 1
        }

        myImageView.image = UIImage(named: "frame\(counter).png")
        index.text = String(counter)
    }
}

