import game_state

def record_match_main():
  state = match_state.MatchState()
  state.enter_match_data()
  while not state.match_over():
    state.update()


if __name__ == '__main__':
  record_match_main()