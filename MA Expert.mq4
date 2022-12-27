void OnTick()
{   // INDICATORS 8,21,50,200 MA
   double MA8 = iMA(NULL,0,8,0,MODE_EMA,PRICE_CLOSE,0);
   double MA21 = iMA(NULL,0,21,0,MODE_SMA,PRICE_CLOSE,0);
   double MA50 =   iMA(NULL,0,50,0,MODE_EMA,PRICE_CLOSE,0);
  double MA200  = iMA(NULL,0,200,0,MODE_EMA,PRICE_CLOSE,0);

   //CONDITION FOR SELL ENTRY
   bool macheck = (MA200 < MA50 && MA50 < MA21 );                    
   bool macheck2 = (MA21 < MA8);
   bool maconfirm = (macheck == macheck2);
   if( maconfirm == true)
   
   if (OrdersTotal()==0)
   //ORDER ENTRY
   int sellticket = OrderSend(_Symbol,OP_SELL,1.00,Bid,3,Bid+200*_Point,Bid-600*_Point,NULL,0,0,clrNONE);
   Comment("true");
   
    //CONDITION FOR SELL ENTRY
   bool machecks = (MA200 > MA50 && MA50 >MA21 );                    
   bool machecks2 = (MA21 > MA8);
   bool masconfirm = (machecks2 == machecks);
   if( masconfirm == true )
   //ORDER ENTRYY
   if( OrdersTotal()==0 )
   int ticket=OrderSend(_Symbol,OP_BUY,1.00,Ask,3,Ask-200*_Point,Ask+600*_Point,NULL,0,0,clrNONE);
  
  
   
   
   Comment("TRUED");
 }  
 
 
   