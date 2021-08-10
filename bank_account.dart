//this is project for bank account
import 'dart:io';
void main(List<String> arguments) {
  // get some data from the user
  print("enter your username here:");
  String customer_name=stdin.readLineSync()!;
  print("enter your password here:");
  int password=int.parse(stdin.readLineSync()!);
  print("enter your account balance:");
  double your_balance=double.parse(stdin.readLineSync()!);
  const the_interest_of_the_bank=.05;
  //which operation you want to do
  print("""what do you want to do?
      1-Enquiry.
      2-Withdrawal. 
      3-exit.""");
  int customer_choise=int.parse(stdin.readLineSync()!);
  if(customer_choise==1)  //if the customer want to enquire about something
    {
      print("""" whta is your enqiry? 
      1-the amount of money in the account.
      2-the interest rate.
      3-the new Offers.
 """);
      int enquiry_choise=int.parse(stdin.readLineSync()!);
      if(enquiry_choise==1) // to print how much money in his account
        {
          print("you have $your_balance EGP in your account");
        }
      else if(enquiry_choise==2) // if he want to know how much interst he take
        {
          double the_interest=your_balance*the_interest_of_the_bank;
          num the_balance_everymonth=your_balance+(your_balance*the_interest_of_the_bank);
          print("you interst every month is $the_interest EGP");
          print("and your balance is $the_balance_everymonth EGP");
          print("""do you want how much money will be in your account after specific time ?
          1-YES.
          2-NO.
          """);
          int the_interset_after_specific_time_choise=int.parse(stdin.readLineSync()!);
          if(the_interset_after_specific_time_choise==1)
            {
              print("enter the number of monthes to get your balance with the interest:");
              int the_number_of_monthes=int.parse(stdin.readLineSync()!);
              num the_new_balance=your_balance+(your_balance*(the_interest_of_the_bank*the_number_of_monthes));
              print("your balance after $the_number_of_monthes monthe is $the_new_balance EGP");
              num the_interst_after_this_time=your_balance*(the_interest_of_the_bank*the_number_of_monthes);
              print("$the_interst_after_this_time EGP is added to your account after $the_number_of_monthes month");
            }
          else if(the_interset_after_specific_time_choise==2)
            {
              print("thank you");
            }
          else
            {
              print("you have not enter any choise!");
            }
        }
      else if(enquiry_choise==3)// the new offers
        {
          print("""our offers are :
          1-to increase the intreast precentage but you can not Withdrawal
          2-to but the interest of your money in the saving bocket
          3-to bay for any charity or organization
          4-to but an amount of money in the shopping visa
          5-exit.
          """);
          int offer_choise=int.parse(stdin.readLineSync()!);
          if(offer_choise==1) //FIRST offer
            {
              const increase_the_intereast=.1;
              print("""in this offer your interest will be 10% of your balance but you will get it after 3 monthes 
              1-agree
              2-disagree
              """);
              int increace_choise=int.parse(stdin.readLineSync()!);
              if(increace_choise==1)
                {
                  num balance_after_offer=your_balance+(your_balance*3);
                  print("you will get $balance_after_offer EGP Every 3 month");
                }
              else
                {
                  print("you will not get this offer");
                }
            }
          else if(offer_choise==2) //second offer
            {
              num saving_bocket;
              num offer_2_interest=your_balance*the_interest_of_the_bank;
              saving_bocket=offer_2_interest;
              print("you are saving $saving_bocket EGP every month.");
            }
          else if(offer_choise==3)
            {
              print("enter the name of organization to pay for:");
              String name_of_organization=stdin.readLineSync()!;
              var the_amount_of_money_to_pay=int.parse(stdin.readLineSync()!);
              if(the_amount_of_money_to_pay<=your_balance)
                {
                  print("""you will pay $the_amount_of_money_to_pay EGP to $name_of_organization"
                      1-ok
                      2-no
                      """);
                  int choise=int.parse(stdin.readLineSync()!);
                  if(choise==1)
                    {
                      var the_reminder=your_balance-the_amount_of_money_to_pay;
                      print("you are having $the_reminder EGP in your account now");
                    }
                }
              else
                {
                  print("you have enterd invalid amount of money");
                }
            }
          else if(offer_choise==4)
            {
              dynamic the_transformed_to_vis=num.parse(stdin.readLineSync()!);
              if(the_transformed_to_vis<=your_balance)
              {
                dynamic shopping_balance = the_transformed_to_vis;
                print("you now have $shopping_balance EGP in you shopping balance");
                num reminder=your_balance-the_transformed_to_vis;
                print("and your balance now $reminder EGP");
              }
              else
                {
                  print("invalid amount of money");
                }
            }
          else if(offer_choise==5)
            {
              print("you will not get any offer thank you");
            }
          else
            {
              print("you must chose from 1 to 5");
            }
        }
    }
  else if(customer_choise==2)  //Withdrawal service
    {
      print("""hello you now are in the Withdrawal sevicehave you subscribed in any offer ?
      1-YES.
      2-NO.
      """);
      int Withdrawal_choise=int.parse(stdin.readLineSync()!);
      if(Withdrawal_choise==1) // to be modified
        {
          print("how much money do you want to Withdrawal ?");
          var Withdrawal_money=num.parse(stdin.readLineSync()!);
          num rem=your_balance-Withdrawal_money;
          Withdrawal_money<=your_balance?print("you will get $Withdrawal_money EGP and you now have $rem"):print("invalid amount of money");
        }
      else
        {
          print("how much money do you want to Withdrawal ?");
          var Withdrawal_balance=num.parse(stdin.readLineSync()!);
          Withdrawal_balance<=your_balance?print("you have Withdrawal $Withdrawal_balance"):print("invalid input");
        }
    }

  else if(customer_choise==3)
    {
      print("thank you");
    }
  else
    {
      print("you have not enter any choise!");
    }
}
