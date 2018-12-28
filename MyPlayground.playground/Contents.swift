import UIKit
import RxSwift

//var str = "Hello, playground"
//var n = 5

// ****************************************************************************** //

//let myseq = Observable.of("Hello World")
//let mysub = myseq.subscribe{event in
//    print(event)
//}

// ****************************************************************************** //

// from array
//let bag = DisposeBag()
//let myseq = Observable.from(["H","e","l","l","o"])
//let mysub = myseq.subscribe{event in
//    switch event {
//    case .next(let value):
//        print(value)
//    case .error(let error):
//        print(error)
//    case .completed:
//        print("completed")
//    }
//}
//mysub.disposed(by: bag)

// ****************************************************************************** //

//let o = Observable.from([1,4,3,5,2,6,5,4,7,8,9,0])
//let s = o.subscribe(onNext:{_ in
//    print("value retrieved")
//})

// ****************************************************************************** //

//let bag = DisposeBag()
//let publishSubject = PublishSubject<String>()
//
//let subscriber1 = publishSubject.subscribe(onNext:{
//    print($0)
//})
//subscriber1.disposed(by: bag)
//
//publishSubject.onNext("Hi")
//publishSubject.onNext("World")
//
//let subscriber2 = publishSubject.subscribe(onNext:{
//    print(#line,$0)
//})
//subscriber2.disposed(by: bag)
//
//publishSubject.onNext("This is awesome, both subscriber get this")

// ****************************************************************************** //

// Map (transform before emitting
//let o = Observable<Int>.of(1,2,3,4,5)
//let m = o.map{value in
//    return value * 10
//}
//let s = m.subscribe{
//    print($0)
//}

// ****************************************************************************** //

//Flatmap
//let o1 = Observable<Int>.of(1,2)
//let o2 = Observable<Int>.of(4,5)
//
//let o3 = Observable.of(o1,o2)
//
//let fm = o3.flatMap{ return $0 }
//
//let s = fm.subscribe{
//    print($0)
//}

// ****************************************************************************** //

var o1 = Observable<Int>.of(1,2,3)
let ps = PublishSubject<Int>()
var f = ps.filter{$0 > 2}.subscribe{
    print($0)
}

ps.onNext(4)
ps.onNext(1)
ps.onNext(6)
ps.onNext(7)



