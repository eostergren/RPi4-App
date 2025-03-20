#include <sys/signal.h>
#include <iostream>

void sig_action(int signo, siginfo_t * si, void * vp) {
  (void)signo;
  (void)si;
  (void)vp;
  std::cout << "rpi4-app sig_action!\n";
}

int main(int argc, char** argv) {

  (void)argc;
  (void)argv;
  std::cout << "Hello, from rpi4-app!\n";

  struct sigaction action;
  action.sa_handler= nullptr;
  action.sa_sigaction = sig_action;
  sigemptyset(&action.sa_mask);
  action.sa_flags = SA_SIGINFO;
  int rc = sigaction( SIGTERM, &action, NULL);
  std::cout << "sigaction returned " << rc << "\n";

  while(true)
  {
    sleep(100);
  }

}
