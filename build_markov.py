import pandas as pd

def break_play_string(play_string):
   if len(play_string) < 2:
       return []
   retval = []
   for i in range(len(play_string) - 1):
       retval.append(play_string[i:i+2])
   return retval

def main():
  # Parse line by line and put pairs into a dataframe.
  game_record = """
    sip
    sp
    sdddp
    sidfdp
    se
    sdp
    sfdioe
    sp
    sddie
    sp
    sfdp
    sddfde
    sifdbp
  """

  action_result_pairs = []
  for line in game_record.split('\n'):
    action_result_pairs.append(break_play_string(line.strip()))

  df = pd.DataFrame(action_result_pairs,
                    columns=("Action", "Resulting_Action"))
  df.pivot_table(
    columns=["Action", "Resulting_Action"], aggfunc='size')


if __name__ == "__main__":
  main()