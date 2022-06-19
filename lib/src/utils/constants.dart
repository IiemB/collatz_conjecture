class $String {
  const $String();

  final appTitle = 'Collatz Conjecture';
  final licenseAppBarTitle = 'Licenses';

  final collatzSummary1 =
      'Unsolved problem in mathematics:\n\nDoes the Collatz sequence eventually reach 1 for all positive integer initial values?\n\nThe Collatz conjecture in mathematics asks whether repeating two simple arithmetic operations will eventually transform every positive integer into one.\n\nThe Collatz conjecture asserts that the total stopping time of every n is finite. It is also equivalent to saying that every n ≥ 2 has a finite stopping time. This definition yields smaller values for the stopping time and total stopping time without changing the overall dynamics of the process.';
  final collatzSummary2 =
      '     Collatz conjecture which is an unsolved problem in mathematics, explains abouta sequence which can be define as follows: ”Start with any positive integer, if that was odd, triple it then add one to the consequence but if that was even divide it by 2. Anyway this conjecture explains that the value of the selected number is notimportant, at the end the sequence will reach one."';
  final collatzSummary2_1 =
      '     This conjecture has been checked by computer test till 5x10^18 so most of the scientists believe that probably this conjecture is true about all of the natural number, and this possibility is very much. But till now, nobody has succeeded to mention a proof which can convince us that this conjecture is correct or not.';
}

class $Url {
  const $Url();

  final collatzFormulaImgNetwork = 'https://bit.ly/3N7JXwY';

  final sourceCode = 'https://github.com/IiemB/collatz_conjecture';

  final collatzReference =
      'https://www.researchgate.net/publication/339998010_A_new_method_to_prove_the_Collatz_conjecture';
}

class $Other {
  const $Other();

  final collatzFormula =
      r'f(n)={\begin{cases}{\frac {n}{2}}&{\text{if }}n\equiv 0{\pmod {2}}\\[4px]3n+1&{\text{if }}n\equiv 1{\pmod {2}}\end{cases}}';
}

class Constanst {
  Constanst._();

  static const string = $String();
  static const url = $Url();
  static const other = $Other();
}
