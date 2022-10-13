import pandas as pd

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
    ...:     g = line.strip()
    ...:     for i in range(len(g)-1):
    ...:         action_result_pairs.append([g[i], g[i+1]])

  df = pd.DataFrame(action_result_pairs,
                    columns=("Action", "Resulting_Action"))
  df.pivot_table(
    columns=["Action", "Resulting_Action"], aggfunc='size')



if __name__ == "__main__":
  main()