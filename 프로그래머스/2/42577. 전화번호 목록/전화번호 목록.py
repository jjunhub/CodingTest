def solution(phone_book):
    _dict = set(phone_book)
    
    for phone in phone_book:
        prefix = ""
        for number in phone:
            prefix += number
            if prefix != phone and prefix in _dict:
                return False
    
    return True