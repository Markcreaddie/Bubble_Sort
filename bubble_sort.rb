def bubble_sort(list)
    #use counter method to prevent runtime from increasing quadratically. Runtime depends on how unsorted a list is

    list_length=list.length
    #initiate counter for position on list and number of loops taken to sort
    i=0
    steps=0
    #the last number is guaranteed to be bigger than the second last element so dd not sort it
    while i>=0 && i<list_length-1 do
        front_num=list[i]
        rear_num=list[i+1]
        if front_num>rear_num
            #move the bigger number after the smaller number
            list[i]=rear_num
            list[i+1]=front_num
            #move back in the list to see if the previous number is bigger than the new small number. Skip if the smaller number occupies the first position since there is nothing before it
            if i!=0
                i-=1
            end
        else
            #move to the next number if the bigger number already follows the smaller number
            i+=1 
        end
        steps+=1
    end
    p "sorted list: #{list}"
    p "number of steps: #{steps}"
end

list=[1,2,3,10,9,8,7,6,4,5,10,11,12]
bubble_sort(list)