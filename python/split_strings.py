'''
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

Examples:

solution('abc') # should return ['ab', 'c_']
solution('abcdef') # should return ['ab', 'cd', 'ef']
'''


def split_strings(s):
    res = []
    size = len(s)
    if size % 2 == 1:
        s += '_'
    return [(s[i:i+2]) for i in range(0, len(s), 2)]