/*
An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

is_isogram("Dermatoglyphics" ) == true
is_isogram("aba" ) == false
is_isogram("moOse" ) == false # -- ignore letter case
*/

bool is_isogram(std::string s)
    {
        for (int x=0; x < s.length(); x++)
            s[x] = tolower(s[x]);
  
        int size = s.length();
        char c;
        int check;
        for(int i = 0; i < size; i++)
        {
            check = 0;
            c = s[i];
            for(int j = 0; j  < size; j++)
            {
                if(s[j] == c)
                    check++;
            }
            if(check > 1)
            {
                return false ;
                break;
            }
        }
        return true;
    }