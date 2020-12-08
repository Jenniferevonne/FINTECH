# Project2 - Hippo Market

## Statement
Can machine learning be effectively used to recognize break-out patterns and make buy/sell decisions utilizing metrics used by intra-day trading to beat a day trader?

We want to enhance our decision making in combination with times-series analysis and sentiment analysis (using StockNews API)  to match or beat the performance of day traders

Commonly used day-trading benchmarks are win-rates and risk-reward ratios (R&R ratio). To determine our success, we want to achieve a win-rate of 50% and a risk-reward ratio of 1-3.

The risk-reward ratio measures the potential profit for every dollar risked. It is the ratio between the value at risk and profit target. These are benchmarks commonly used by day-traders to evaluate their trading performance.

The win-rate is your wins (making a profit) divided by your losses (making negative returns)

Our patterns consist of consolidation, bull flag, and sideway consolidation.

Bull flag has features of:
*  Strong move up on high relative volume, forming the pole
*  Strong consolidates near the top of the pole, forming the flag
*  Stocks break out of consolidation patterns on high relative volume to continue the trend.

Consolidation has features of:
* A stock or security that is neither continuing nor reversing a larger price trend
* Typically trade within limited price ranges and offer relatively few trading opportunities until the pattern emerges

Sideway Consolidation has features of: 	
* A horizontal price movement that occurs when the forces of supply and demand are nearly equal
* This typically occurs during a period of consolidation before the price continues a prior trend or reverses into a new trend



## Project Proposals

1. Is machine learning effective in finding patterns and decision making?
We have our defined patterns, and we will try to use two different machine learning methods to detect patterns.  

2. Can we outperform the market (S&P) based on our methods?
We will calculate metrics, such as Sharpe Ratio, win-rate, and risk-reward ratio to determine our performance. 



## Methods

We would use three different evaluation methods to determine buy or sell decisions. 

One of our methods would be to use time series analysis and machine learning to determine our signals.

Our second method would be to use the stocknews api, which will allow us tone analysis to determine signals.

Our third method would be a combination of our two previous methods. 

We will compare our findings between each method. 

## Measurements
1. We will use risk formulas such as Sharpe Ratio 
2. We could use comparables (i.e. Gross Profit/Market Cap)
3. We will check our performance against S&P and Dow performance
4. More historical figures: P/E ratio
5. Risk-Reward ratio and win-ratio

## Data Sources
* Stock News API: sentiment analysis
* Yahoo Finance API or Quantopian: stock market information 
