using System;
using System.Collections;
using System.Collections.Generic;

namespace ConsoleAppLab1
{
    class Program
    {
        static void Main(string[] args)
        {
            Agency agency = new Agency("World");
            Console.WriteLine("\n   Туристичка агенција „World“\n");
            bool serve = true;
            while(serve)
            {

                
                Console.WriteLine("--------------------------------------");
                Console.WriteLine("\tИзбери услуга:\n\n" +
                    " 1. Услужи го клиентот\n" +
                    " 2. Продадени карти на шалтерот\n" +
                    " 3. Вкупен промет на шелтерот\n" +
                    " 4. Сите продадени карти на агенцијата, \n    организирани по шалтер\n" +
                    " 5. Вкупен промет на агенцијата\n" +
                    " 6. Успешност на агенцијата\n" +
                    " 7. Излез\n");
                Console.WriteLine("--------------------------------------");
                int choice = Convert.ToInt32(Console.ReadLine());

                switch (choice)
                {
                    case 1:
                        {
                            Console.WriteLine("Избравте опција 1. Услужи го клиентот.\n");
                            string name, surname, destination;
                            int age, counter;
                            Console.WriteLine("Внесете име на клиентот:");
                            name = Console.ReadLine();
                            Console.WriteLine("Внесете презиме на клиентот:");
                            surname = Console.ReadLine();
                            Console.WriteLine("Внесете години на клиентот:");
                            age = Convert.ToInt32(Console.ReadLine());
                            Console.WriteLine("Внесете дестинација на клиентот:\n" +
                                "Дестинации: Rome, London, Tokyo, Sofia, Istanbul, Toronto, Miami, Zagreb, Belgrade, Moscow");
                            destination = Console.ReadLine();

                            if (!agency.destinations.Contains(destination))
                            {
                                Console.WriteLine("Не нудиме патување до таа дестинација!\n");
                                break;
                            }

                            Console.WriteLine("Внесете број на шалтер:");
                            counter = Convert.ToInt32(Console.ReadLine());
                            if (counter <= 0 || counter > 4)
                            {
                                Console.WriteLine("Неправилен број на шалтер!\n");
                                break;
                            }

                            Console.WriteLine("Цената до дестинација " + destination + " e " + agency.calculatePrice(destination) + " денари\n");
                            Console.WriteLine("Дали сакате да купите карта? [Y/N]");
                            char buy = Convert.ToChar(Console.ReadLine());

                            agency.getCounter(counter - 1).addCustomerToCounter(name, surname, age, destination);
                            if (buy == 'Y')
                            {
                                agency.getCounter(counter - 1).updateTickets(destination);
                                Console.WriteLine("Купивте карта, пријатен ден!\n");
                            }
                            else if (buy == 'N')
                            {
                                Console.WriteLine("Не купивте карта, пријатен ден!\n");
                                break;
                            }
                            else
                            {
                                Console.WriteLine("Невалиден влез.");
                                break;
                            }

                            break;
                        }
                    case 2:
                        {
                            Console.WriteLine("Внеси број на шалтер:");
                            int counter = Convert.ToInt32(Console.ReadLine());
                            if(counter <= 0 || counter > 4)
                            {
                                Console.WriteLine("Неправилен број на шалтер!");
                            }
                            try
                            {
                                Console.WriteLine("Бројот на продадени карти на шалтерот " + counter + " e: " +
                                    + agency.getCounter(counter - 1).getSoldTicketsToCounter());
                            }
                            catch(IndexOutOfRangeException)
                            {
                                Console.WriteLine("IndexOutOfRange");
                            }
                            break;
                        }
                    case 3:
                        {
                            Console.WriteLine("Внеси број на шалтер:");
                            int counter = Convert.ToInt32(Console.ReadLine());
                            if (counter <= 0 || counter > 4)
                            {
                                Console.WriteLine("Неправилен број на шалтер!");
                            }
                            try
                            {
                                Console.WriteLine("Вкупен промет на шалтерот " + counter + " e: " + 
                                    + agency.getCounter(counter - 1).getProfitPerCounter() + " денари.");
                            }
                            catch
                            {
                                Console.WriteLine("IndexOutOfRange");
                            }
                            break;
                        }
                    case 4:
                        {
                            Console.WriteLine("Сите продадени карти на агенцијата се:");
                            Console.WriteLine("-------------------------------------");
                            Console.WriteLine("Шалтер 1: " + agency.getCounter(0).getSoldTicketsToCounter() + " карти.");
                            Console.WriteLine("Шалтер 2: " + agency.getCounter(1).getSoldTicketsToCounter() + " карти.");
                            Console.WriteLine("Шалтер 3: " + agency.getCounter(2).getSoldTicketsToCounter() + " карти.");
                            Console.WriteLine("Шалтер 4: " + agency.getCounter(3).getSoldTicketsToCounter() + " карти.");

                            Console.WriteLine("Вкупно продадени карти на сите шалтери: " + agency.soldTicketsOfAllCounters());
                            break;
                        }
                    case 5:
                        {
                            Console.WriteLine("Вкупен промет на агенцијата е: " + agency.profitOfAllCounters() + " денари.");
                            break;
                        }
                    case 6:
                        {
                            Console.WriteLine("Успешност на агенцијата: " + agency.successRate() + "%");
                            break;
                        }
                    case 7:
                        {
                            Console.WriteLine("Успешен излез!");
                            return;
                        }
                    default:
                        {
                            Console.WriteLine("Нема таква услуга!");
                            serve = false;
                            break;
                        }
                }
            }
        }
    }

    class Agency
    {
        public string name;
        public List<String> destinations;
        public Counter[] counters = new Counter[4];

        public Agency(string name)
        {
            this.name = name;
            destinations = new List<string>(0);
            destinations.Add("Rome");
            destinations.Add("London");
            destinations.Add("Tokyo");
            destinations.Add("Sofia");
            destinations.Add("Istanbul");
            destinations.Add("Toronto");
            destinations.Add("Miami");
            destinations.Add("Zagreb");
            destinations.Add("Belgrade");
            destinations.Add("Moscow");

            for(int i = 0; i < 4;i++)
            {
                this.counters[i] = new Counter();
            }
        }

        public int calculatePrice(string destination)
        {
            return destination.Length * 2000;
        }

        public Counter getCounter(int counterNumber)
        {
            if (counterNumber < 0 || counterNumber > 3)
                throw new IndexOutOfRangeException();
            return counters[counterNumber];
        }

        public int profitOfAllCounters()
        {
            int profit = 0;
            for (int i = 0; i < 4; i++)
            {
                profit += counters[i].getProfitPerCounter();
            }
            return profit;
        }

        public int soldTicketsOfAllCounters()
        {
            int soldTickets = 0;
            for(int i = 0; i < 4; i++)
            {
                soldTickets += counters[i].getSoldTicketsToCounter();
            }
            return soldTickets;
        }
        
        public float successRate()
        {
            int servedClients = 0, successfullyServedClients = 0;
            for(int i = 0; i < 4; i++)
            {
                servedClients += counters[i].serverdClients();
                successfullyServedClients += counters[i].getSoldTicketsToCounter();
            }
            return ((float) successfullyServedClients / servedClients) * 100;
        }
    }

    class Counter
    {
        private List<Customer> customers;
        private int soldTickets;
        private int profit;
        public Counter()
        {
            this.customers = new List<Customer>(0);
            this.soldTickets = 0;
            this.profit = 0;
        }

        public void addCustomerToCounter(string name, string surname, int age, string destination)
        {
            customers.Add(new Customer(name, surname, age, destination));
        }

        public void updateTickets(string destination)
        {
            soldTickets++;
            profit += (destination.Length * 2000);
        }

        public int getSoldTicketsToCounter()
        {
            return soldTickets;
        }

        public int serverdClients()
        {
            return customers.Count;
        }

        public int getProfitPerCounter()
        {
            return profit;
        }
    }

    class Customer
    {
        private string name;
        private string surname;
        private int age; 
        private string destination;

        public Customer(string name, string surname, int age, string destination)
        {
            this.name = name;
            this.surname = surname;
            this.age = age;
            this.destination = destination;
        }
    }
    
}
