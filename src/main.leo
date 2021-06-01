// The 'sort' main function.

function main(a: [u32; 10]) -> [u32; 10] {

    return selection_sort(a);

}

   function selection_sort(arr: [u32; 10]) -> [u32; 10] {
   
        for i in 0..10 {
       
            let minor: u32 = arr[i];
            let position: u32 = i;
            for j in i+1..10 {          
                if minor > arr[j] {
                    minor = arr[j];
                    position = j;                  
                }
            }

            if i != position {  
                arr[position] = arr[i];
                arr[i] = minor;
            }

        }
        return arr;
    }


    @test
	function test_selection_sort() {
    let unsorted: [u32; 10]
        = [8u32, 2u32, 4u32, 3u32, 5u32, 10u32, 7u32, 1u32, 9u32, 6u32];
    let expected: [u32; 10]
        = [1u32, 2u32, 3u32, 4u32, 5u32, 6u32, 7u32, 8u32, 9u32, 10u32];
    
    let result = selection_sort(unsorted);
    console.log("Result is: {}", result);
    console.assert(result == expected);
}