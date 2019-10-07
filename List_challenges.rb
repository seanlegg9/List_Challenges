def threed(list)
    count = 0
    list.size.times do |num|
        if list[num] == 3
            count += 1
            if list[num] == list[num+1]
                return false
            end
            if list[num] == list[list.size-1] && count == 3
                return true
            end
        end
    end
    return false
end

# puts threed([1, 3, 2, 3, 4, 3]) # true
# puts threed([3, 3, 3]) # false
# puts threed([1, 3, 2, 3, 4]) # false
# puts threed([1, 3, 2, 3, 4, 3, 5, 3, 6]) # false

def same_first_last(list)
    if list.size - 1 == 0
        return false
    elsif list[list.size - 1] == list[0]
        return true
    else
        return false
    end
end

# puts same_first_last([3]) # false
# puts same_first_last([3, 3]) # true
# puts same_first_last([3, 1, 4]) # false

def get_sandwich(str)
    new_str = ""
    (str.size - 4).times do |ingred|
        slice = str[ingred..(ingred + 4)]
        if slice == "bread"
            new_str = str[str.index(slice) + 5..str.rindex(slice) - 1]
        end
    end
    return new_str
end

puts get_sandwich("breadbutterbread") # butter
puts get_sandwich("butterbread") # ""
puts get_sandwich("butterbreadbutterbreadbutterbreadbutter") # butterbreadbutter

def count_code(str)
    count = 0
    (str.size - 3).times do |i|
        slice = str[i..i+3]
        if slice == "coae" || slice == "cobe" || slice == "coce" || slice == "code" || slice == "coee" || slice == "cofe" ||  slice == "coge" || slice == "cohe" || slice == "coie" || slice == "coje" || slice == "coke" || slice == "cole" || slice == "come" || slice == "cone" || slice == "cooe" || slice == "cope" || slice == "coqe" || slice == "core" || slice == "cose" || slice == "cote" || slice == "coue" || slice == "cove" || slice == "cowe" || slice == "coxe" || slice == "coye" || slice == "coze"
            count += 1
        end
    end
    return count
end

# puts count_code("code") # 1
# puts count_code("slurmp") # 0
# puts count_code("codeslurmpcoae") # 2

def middle_way(list_1, list_2)
    meds = []
    med_1 = median(list_1)
    med_2 = median(list_2)
    meds[0] = med_1
    meds[1] = med_2
    return meds
end

# print middle_way([1, 2, 3], [2, 3, 4]) # [2, 3]

def either_2_4(list)
    count = 0
    i = 0
    list.each do |num|
        if num == 2 && count == 0
            if num == list[i + 1]
                count += 2
            end
        elsif num == 4 && count == 0
            if num == list[i + 1]
                count += 1
            end
        elsif num == 4 && count == 2
            if num == list[i + 1]
                return false
            end
        elsif num == 2 && count == 1
            if num == list[i + 1]
                return false
            end
        end
        i = i + 1
    end
    if count == 0
        return false
    else
        return true
    end
end

# puts either_2_4([1, 2, 2, 3]) # true
# puts either_2_4([1, 4, 4, 3]) # true
# puts either_2_4([2, 2, 3, 4, 4]) # false
# puts either_2_4([1, 2, 3, 4]) # false

def g_happy(str)
    i = 0
    count = 0
    str.size.times do |letter|
        if str[letter] == "g"
            if str[letter] != str[i + 1]
                if str[letter] != str[i - 1]
                    return false
                end
            end
        else
            count += 1
        end
        i += 1
    end
    if count == str.size
        return false
    else
        return true
    end
end

# puts g_happy("agga") # true
# puts g_happy("aggagga") # true
# puts g_happy("aga") # false
# puts g_happy("aggaga") # false
# puts g_happy("happy") # false
# puts g_happy("gaggag") # false

def merge(list_1, list_2)
    com_list = list_1 + list_2
    new_list = list_1 + list_2
    i_2 = 0
    new_list.each do |a|
        i = 0
        new_list.each do |b|
            if a >= b
                new_list[i_2] = com_list[i]
            end
            i += 1
        end
        i_2 += 1
    end
    return new_list
end

# print merge([1, 2, 8], [4, 9, 10]) # [1, 2, 4, 8, 9, 10]

def can_balance(list)
    i = 0
    list.each do |a|
        left = 0
        right = 0
        i2 = 0
        list.each do |b|
            if i2 <= i
                left += b
            else
                right += b
            end
            i2 += 1
            if left == right
                return true
            end
        end
        i += 1
    end
    return false
end

# puts can_balance([7, 4, 3]) # true
# puts can_balance([8, 1, 2]) # false

def shift_left(list)
    i = 0
    shifted = []
    save = []
    save[0] = list[0]
    list.each do |num|
        if i == 0

        else
            shifted[i - 1] = num
        end
        i += 1
    end
    shifted[list.size - 1] = save[0]
    return shifted
end

# print shift_left([6, 2, 5, 3]) # [2, 5, 3, 6]