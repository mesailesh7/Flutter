// Write a program to tally up total change from user’s pockets. The method GetTotal() will have
// number of pennies, nickels, dimes, quarters, loonies and twoonies passed into it and will return the
// total amount. All values entered must be integers and positive. Validation is required to ensure a
// negative value is not allowed.

int calculateMoney({
  int? pennies,
  int? nickels,
  int? dimes,
  int? quarters,
  int? loonies,
  int? twoonies,
}) {
  // late int? total;

  // total = pennies? + nickels? + dimes? + quarters? + loonies? + twoonies?;
  // return total;
  late int? total;
  total = pennies! + nickels! + dimes! + quarters! + loonies! + twoonies!;
  return total;
}
