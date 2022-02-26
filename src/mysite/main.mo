
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Array "mo:base/Array";


// var i = 0;
// let arr: [var Int] = [var 6,5,4,7,3,2,1];
// quicksort(arr);

// while (i < arr.size()){
//     Debug.print(Int.toText(arr[i]));
//     i := i+1;
// }


actor {

    func quicksort(arr: [var Int]): () {
        let len:Int = arr.size();
        var i = 0; 
        var j = 0; 

        while (i < len -1) {
            j := 0;
            while (j < len-1-i) {
                if (arr[j] > arr[j+1]) {
                    let temp = arr[j+1]; 
                    arr[j+1] := arr[j];
                    arr[j] := temp;
                };
                j := j + 1;
            };
            i := i + 1;
        };
    };


    public func qsort(arr: [Int]): async [Int] {
        let xs: [var Int] = Array.thaw(arr);
        quicksort(xs);
        Array.freeze(xs);
    }
}