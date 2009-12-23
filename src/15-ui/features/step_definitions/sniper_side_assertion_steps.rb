
Then /^the sniper shows that it.s joining$/ do
  @driver.should have_sniper_status(:status => MainWindow::STATUS_JOINING)
end

Then /^the sniper shows that it.s lost the auction$/ do
  @driver.should have_sniper_status(:status => MainWindow::STATUS_LOST)
end

Then /^the sniper shows that it.s won the auction$/ do
  @driver.should have_sniper_status(:status => MainWindow::STATUS_WON)
end

Then /^the sniper shows that it.s winning the auction$/ do
  @driver.should have_sniper_status(:status => MainWindow::STATUS_WINNING)
end

Then /^the sniper shows that it.s bidding (\d+) to top the previous price$/ do | last_bid |
  most_recent_price = @auction.most_recent_price
  @driver.should have_sniper_status(:item_id => @auction.item_id,
                                    :status => MainWindow::STATUS_BIDDING, 
                                    :last_bid => last_bid, 
                                    :most_recent_price => most_recent_price)
end

