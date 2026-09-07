-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2024 at 02:43 PM
-- Server version: 5.7.42
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helplabs_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_accounts`
--

CREATE TABLE `ci_accounts` (
  `id` int(11) NOT NULL,
  `account_id` varchar(40) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `savings_acc` varchar(40) DEFAULT NULL,
  `check_acc` varchar(40) DEFAULT NULL,
  `savings_balance` varchar(500) DEFAULT '0',
  `check_balance` varchar(500) DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `cot` varchar(40) DEFAULT NULL,
  `tax` varchar(40) DEFAULT NULL,
  `imf` varchar(40) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'user-default.png',
  `creditCard` varchar(100) DEFAULT NULL,
  `expire` varchar(10) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `lastDate` varchar(255) DEFAULT NULL,
  `lastTime` varchar(255) DEFAULT NULL,
  `lastUrl` varchar(255) DEFAULT NULL,
  `allow_upload` varchar(100) DEFAULT '0',
  `allow_codes` varchar(100) DEFAULT '0',
  `allow_beneficiary` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_accounts`
--

INSERT INTO `ci_accounts` (`id`, `account_id`, `name`, `status`, `savings_acc`, `check_acc`, `savings_balance`, `check_balance`, `email`, `currency`, `password`, `phone`, `city`, `country`, `address`, `zip`, `dob`, `gender`, `occupation`, `pin`, `cot`, `tax`, `imf`, `otp`, `image`, `creditCard`, `expire`, `ip`, `lastDate`, `lastTime`, `lastUrl`, `allow_upload`, `allow_codes`, `allow_beneficiary`, `created_at`, `updated_at`) VALUES
(11, '8850345', 'demo', '', '005525108318', '005525108613', '0', '500000', 'demo@user.com', '$', '$2a$08$a8zzkOhK8RdYD/VoAq5HOuTSaDYb..dp6.56LhYFN.fBniMJBwOcu', '111111111111', 'Ashmore and Cartier Island', '-1', 'address', '1111', 'Wednesday 7th of October 1992', 'Other', 'others', '2886', '110080365', '361-690', 'Ghb63', NULL, 'user-default.png', '3124', '10/26', '197.210.79.249', '28th January, 2024', '03:21 PM', 'https://helplabs.store/home/user', '0', '0', 1, '2023-10-11 09:27:16', '2024-01-28 17:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `ci_admin`
--

CREATE TABLE `ci_admin` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_admin`
--

INSERT INTO `ci_admin` (`id`, `admin_username`, `admin_email`, `admin_password`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@demobank.com', '$P$BTr6i5LQL2nHmvTWVM9fmbfISyLxg50', 1, '01840dedadb91c1fac9971b5ee11bc4f', '2022-10-11 16:23:34', '2023-05-24 05:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `ci_basic`
--

CREATE TABLE `ci_basic` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `value` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_basic`
--

INSERT INTO `ci_basic` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'about', 'Givens Hall Bank is dedicated to provide exceptional financial service to its members. Become a member today!', '2023-02-08 17:15:43', '2023-10-11 10:15:12'),
(2, 'terms', '<h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">1. Preface</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">1.1 This client agreement (the “Agreement”)is entered by and between CryptoPro Investment Platform (the “Company”) and the person and/or legal entity that has applied to open a trading account at the Company’s Binary Options trading platform (the “Client”), according to the terms and conditions detailed in this agreement.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">1.2 Trading in Binary Options (“Trading”), means that a contract is being created which gives the Client the right to estimate the direction of change in price of an underlying asset, within a certain time frame determined by the Company. This trading instrument is different from trading in trading in ‘options’ in a traditional way, since there is a fixed return that is determined at the outset of the trade, such as: there is usually no Stop-Loss order and other features.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">2. The Trading Account</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.1 Account Opening – Client may apply for an account through the Company’s website and the Company will accept such account opening application (the “Trading Account”) under the following terms: (i) the Company has received confirmation that the Client has agreed to enter into this Agreement (such confirmation can be made by checking the “I AGREE” button or link on the Company’s Internet website (the “Website”), followed by a completed application form (if applicable) and all other Client’s information required by the Company to be provided. The Client confirms that Client’s information is full, accurate and complete. If there is a change in the information provided by the Client, the Client must notify the Company immediately of any such change.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.2 Usage of the Trading Platform is done through the Account, by a limited license provided by the Company to the Client. The license is personal, non-transferable and is for persons who are older than 18 years old (or older legal age, if the law applicable to the Client’s jurisdictions requires a higher legal age) and subject to this Agreement. The Client will not transfer, assign, or enable other to make any use of the license, and/or give the Clients access codes to the Trading Account to anyone. Any damage caused to the Client, the Company and any third party due to breach of this Agreement by Client, shall be under the Client’s sole responsibility.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.3 Activation of the Trading Account – The Account will be activated by the Company as soon as the Company has identified the funds credited by the Client to the Trading Account. The Company may activate the Trading Account and permit trading in the Trading Account subject to such limitations, and to the satisfaction of such further requirements as the Company may impose. Where a Trading Account is not activated or is frozen, no funds held by the Company in respect of that Trading Account may be transferred back or to any other person until the Company is satisfied that all Applicable Regulations have been complied with.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.4 The Company may act, according to the Company’s sole discretion, as principal or as agent on the Client’s behalf in relation to any Transaction entered into pursuant to the Agreement. Therefore the Company may act as the counter party to the Clients Trading activity. The Client confirms that it acts as the sole principal and not as agent or trustee on behalf of someone else.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">2.5 The Client hereby represents and warrants that his engagement with the Company in this Agreement and his use of the Company’s services are in full compliance with the law applicable to the Client.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">3. The Transactions</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.1 The Trading Platform enables Binary Options trading in exchange rates of Bitcoin digital currency. The Trading Platform displays indicative quotes of exchange rates of different financial instruments pairs, based on different financial information systems, as the most updated exchange rates in the international capital markets. For determining the quotes for different time periods, the platform is making mathematical calculations according to known and accepted capital markets formulas. It is acknowledged by both Parties that due to different calculation methods and other circumstances, different trading platforms and/or markets may display different price quotes.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.2 The Client will receive a predetermined pay-out if his binary option transaction expires in-the-Bitcoin, and he will lose a predetermined amount of his investment in the Transaction if the option expires out-of-the-Bitcoin. The predetermined amounts are a derivative of the collateral invested in the transaction by the Client, and will be published in the Trading Platform. The degree to which the option is in-the-Bitcoin or out-of-the-Bitcoin does not matter as it does with a traditional options</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.2 The Client will receive a predetermined pay-out if his binary option transaction expires in-the-Bitcoin, and he will lose a predetermined amount of his investment in the Transaction if the option expires out-of-the-Bitcoin. The predetermined amounts are a derivative of the collateral invested in the transaction by the Client, and will be published in the Trading Platform. The degree to which the option is in-the-Bitcoin or out-of-the-Bitcoin does not matter as it does with a traditional options</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.3 The Client authorizes the Company to rely and act on any order, request, instruction or other communication given or made (or purporting to be given or made) by the Client or any person authorized on the Client’s behalf, without further inquiry on the part of the Company as to the authenticity, genuineness authority or identity of the person giving or purporting to give such order, request, instruction or other communication. The Client will be responsible for and will be bound by all obligations entered into or assumed by the Company on behalf of the Client in consequence of or in connection with such orders, requests, instructions or other communication.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.4 The Company reserves the right, but not obliged to the following: to set, at its absolute discretion, limits and/or parameters to control the Client’s ability to place orders or to restrict the terms on which a Transaction may be made. Such limits and/or parameters may be amended, increased, decreased, removed or added to by the Company.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.5 Arbitrage/cancellation of orders and transactions – The Company does not allow actions or non-actions based on arbitrage calculations or other methods that are based on exploitation of different systems or platforms malfunction, delay, error etc. The Company is entitled, by its own discretion, to cancel any transaction that has been executed due or in connection with an error, system malfunction, breach of the Agreement by Client etc. The Company’s records will serve as decisive evidence to the correct quotes in the world capital markets and the wrong quotes given to the Client; The Company is entitled to correct or cancel any trade based according to the correct quotes.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">3.6 Cancel Feature Abuse Company offers a special cancellation feature that allows traders to cancel a trade within a few seconds of execution. Abuse of the cancellation feature can be considered market arbitrage and can result in forfeiture of profits. Company reserves the right to cancel a position if the cancellation feature is abused. The acceptable cancellation percentage cannot exceed 10% of the total number of executed trades. Cancelling more than 10% of the total number of executed trades is considered abuse of this feature and resulting profits may be forfeited from such abuse.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">4. Fees &amp; Charges</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.1 Normally the company is supposed to pay a profit of 25% to 60% to clients after every month (28 working days) depending on the investment package</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.2 The company charges 10% commission and 5% Insurance.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.3 The company do not charge from investors’ earnings.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.4 The Company does not place charges for any transfer or withdrawal made by client depending on investment package.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">4.5 Investment package ranging from Intermediate plan and above enjoy more offers from the company.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">5. Borrowing</h3><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Introduction</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.1 We may agree to lend you money in accordance with this clause 5 and, for certain investment plans.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.2 You will need to pay 10% of the loan given in clause 5.1 as loan fees before loan is approved. Installment payments are accepted on negations with the company.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.3 Loan profits can be withdrawn thereafter with investors’ accounts in good trading conditions.</p><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Repayment</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.4 Investors’ can repay loans in full or repair on installments as agreed with the company either weekly or monthly.</p><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Using Account Balances To reduce Liability</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.5 If you owe us money on any account we may use money in that account or any other account (including in a fixed term deposit account) that you have with us to reduce or repay what you owe us. You authorize us to debit any of your accounts with us for any amounts due.</p><h6 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Loan Cancellation</h6><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">5.6 Loan request can be cancelled by email notifications within 24 hours of request or physical visit to our office as in the contact section of company website.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">6. Bonuses</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">6.1 The Company offer bonuses to clients depending on the investment plan.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">6.2 The Company shall make provisions which would,allow clients with Investment packages of 4.000BTC - 5.000BTC to special bonus.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">6.3 Bonuses to the clients shall be made to encourage and promote profits.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">7. Privacy and Data Protection</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.1 The Company shall hold some personal client information due to the nature of the Company’s business and relations with the Client. All data collected, whether on paper (hard copy) or on a computer (soft copy) is safeguarded in order to maintain the Client privacy.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.2 The Company shall be permitted to disclose and/or use the Client Information for the following purposes: (a) internal use, including with affiliated entities; (b) As permitted or required by law; (c) protection against or prevent actual or potential fraud or unauthorized transactions or behavior (d) computerized supervision of Client’s use of the services, review and/or supervision and/or development and/or maintenance of the quality of services; (e) to protect the Company’s rights or obligation to observe any applicable law.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.3 The Client hereby grants his/her permission to the Company to make use of his/her details in order to provide updates and/or information and/or promotion or marketing purposes through the Clients E-mail address or other contact information. Cancellation of this consent shall be done in writing by providing written notice to the Company, and shall apply to new publications that have not been sent.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.4 The Client agrees and acknowledges that the Company may record all conversations with the Client and monitor (and maintain a record of) all emails sent by or to the Company. All such records are the Company’s property and can be used by the Company, among other things, in the case of a dispute between the Company and the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.5 Affiliation- the Company may share commissions and Insurance with its associates, introducing brokers or other third parties (“Affiliates”), or receive remuneration from them in respect of contracts entered into by the Company. Such Affiliates of the Company may be disclosed with Client’s information.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">7.6 The Company’s Trading Platform, Website or other services may require the use of ‘Cookies’.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">8. No Advice</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.1 The Client represents that it has been solely responsible for making its own independent appraisal and investigations into the risks of any Transaction. The Client represents that it has sufficient knowledge, market sophistication and experience to make its own evaluation of the merits and risks of any Transaction. The Company does not advise its Clients in regard to the expected profitability of any Transaction. The Client acknowledges that he has read and understood the Risk Disclosure Document which sets out the nature and risks of Transactions to which this Agreement relates.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.2 Where the Company does provide market commentary or other information: (a) this is incidental to the Client’s relationship with the Company. (b) It is provided solely to enable the Client to make its own investment decisions.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.3 The Company shall not be responsible for the consequences of the Client acting upon such trading recommendations, market commentary or other information.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.4 The Client acknowledges that the Company shall not, in the absence of its fraud, willful default or gross negligence, be liable for any losses, costs, expenses or damages suffered by the Client arising from any inaccuracy or mistake in any information given to the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.5 The Company is under no obligation to assess the appropriateness of any Transaction for a Client, to assess whether or not the Client has the necessary knowledge and experience to understand the nature of and risks associated with the Transactions. All risks related to the above are under the sole responsibility of the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">8.6 The Company does not place tax on any client. All transactions made between the client and the Company is tax free.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">9. Closing an account and cancellation of the agreement</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">9.1 Either party may terminate this Agreement by giving 1 (One) business days written notice by email to support@alienhost.co.uk, of termination to the other party. Either party may terminate this Agreement immediately in any case of any breach of this Agreement or event of Default by the other Party. Upon terminating notice of this Agreement, Client shall be under the obligation to close all open positions, otherwise, the notice shall become void, or the Company shall have the right to close all open positions without assuming any responsibility. Such closer may result in outcome that would be less favorable for the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">9.2 Termination shall not affect any outstanding rights and obligations according to the applicable law and the provisions of this this Agreement.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">9.3 Upon termination, all transactions made by Either Party to the other Party will become immediately due.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">10. Limitations of Liability and Indemnities</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.1 THE SERVICES OF THE COMPANY ARE PROVIDED “AS IS” AND “AS AVAILABLE”, AND COMPANY MAKES NO WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, WARRANTIES OF MERCHANT ABILITY AND FITNESS FOR PARTICULAR PURPOSE. THE COMPANY DOES NOT WARRANT THAT ANY AFFILIATED SOFTWARE, SERVICES OR COMMUNICATION THAT MAY BE OFFERED OR USED BY THE CLIENT SHALL ALWAYS BE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS. THE COMPANY WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND ARISING FROM TRADING OR THE USE OF THE COMPANY’S SERVICES, INCLUDING, BUT NOT LIMITED TO DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, AND CONSEQUENTIAL DAMAGES.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.2 Client acknowledges and agrees that the Trading Platform follows the relevant market, whether the Client is in front of his computer or not, and whether the Clients computer is switched on or not, and will exercises the order left by the Client if applicable.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.3 The Company over special secured services to the client via Insurance thus protecting the client from profit loss.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">10.4 The Company shall have the right to set-off any amount owed by the Company to the Client, against any debt or other obligation of the Client towards the Company. In any event of Default of Client (voluntary or involuntary insolvency procedures against the Client) all debts, future debts and other obligations of the Client towards the Company shall become immediately due.</p><h3 style=\"line-height: 1.4; color: rgb(1, 26, 65); font-family: &quot;Source Sans Pro&quot;, sans-serif;\">11. General Provisions</h3><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.1 Amendments – The Company has the right to amend the Agreement without obtaining any prior consent from the Client. If the Company makes any material change to the Agreement, it will give at least 10 (Ten) Business Days’ notice of such change to the Client. Such amendment will become effective on the date specified in the notice. Unless otherwise agreed, an amendment will not affect any outstanding order or Transaction or any legal rights or obligations which may already have arisen.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.2 Partial invalidity- If, at any time, any provision of this Agreement is or becomes illegal, invalid or unenforceable in any respect under the law of any jurisdiction, neither the legality, validity or enforce ability of the remaining provisions of this Agreement nor the legality, validity or enforce ability of such provision under the law of any other jurisdiction shall in any way be affected or impaired.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.3 Joint account- If the Trading Account is a joint account (on the name of more than one entity), then each of the entities in the Trading Account shall be authorized to represent the other entities towards the Company, with no requirement of any prior notice or approval from the other entities. Each of the entities in the Trading Account agrees that any notice or instruction given by the Company to any of the entities shall be considered as given to all the entities. In case of contradiction between instructions given to the Company by different entities, then the last instruction received by the Company will prevail.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.4 Notices – Unless otherwise agreed, all notices, instructions and other communications to be given by the Company shall be given to the address or fax number provided by the Client, or via e-mail or other electronic means, details of which are provided by the Client to the Company. Any complaint shall be directed to the Company’s client services department, who will investigate the complaint and make every effort to resolve it. Such a complaint should be made to: support@alienhost.co.uk</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.5 Governing Law – These Terms and any relationship between the Company and the Client shall be governed by law applicable in Denmark and subject to the exclusive jurisdiction of Danish courts. The Company shall have the right, in order to collect funds owed to the Company by Client or to protect the Company’s rights such as good-name, intellectual property, privacy etc. to immediately bring legal proceedings against the Client, in the Client’s residency and according to the Client’s residency applicable law.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.6 No Right to Assign- No rights under this Agreement shall be assignable nor any duties assumed by another party except to/by an affiliate of The Company. Upon assignment to an Affiliate of the Company, the terms of this Agreement may be amended to fit any applicable regulation effective upon the assignee, and Client hereby consent in advance to such regulatory modifications to this Agreement. This Agreement shall be binding upon and inure to the benefit of the successors heirs of the Client.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.7 Dormant Trading- If the Client will not perform any trading activity or his trading activity will be in very low volume, for the time period defined by the Company, or if the Client does not hold minimum funds in his Trading Account, defined by the Company, the Company may, charge the Trading Account with Dormant Trading commission, at a rate to be determined by the Company from time to time, close any open trade and/or the Client access to the Trading Account and/or terminate this Agreement.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.8 Language, Notices and Complaints – All communications between the Company and the Client will be in English or in any Language, suitable both to the Client and the Company.</p><p style=\"line-height: 1.7; color: rgb(1, 31, 76); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">11.9 Force majeure – The Company shall not bear responsibility to any harm or any form which shall be caused to the Client in the event that such harm is the result of a force majeure and any outside event which is not in the control of the Company which influences Trading. The Company shall not bear any responsibility for any delay in communications and/or failure in the internet, including, without limitation, computer crashes or any other technical failure, whether caused by the telephone companies and various telecommunication lines, the ISP computers, the Company’s computers or the Customer’s Computers.</p>', '2023-02-08 17:15:43', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_beneficiary`
--

CREATE TABLE `ci_beneficiary` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `bank` varchar(255) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `rtn` varchar(100) DEFAULT NULL,
  `acc_no` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'user-default.png',
  `email` varchar(255) NOT NULL,
  `donor` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_checks`
--

CREATE TABLE `ci_checks` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `front` varchar(255) DEFAULT NULL,
  `back` varchar(255) DEFAULT NULL,
  `remarks` mediumtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_checks`
--

INSERT INTO `ci_checks` (`id`, `user_id`, `front`, `back`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '2', '1676409698_0f236cbb99844f5b8155.png', '1676409698_03be23d189357a52c542.png', NULL, '2023-02-14 21:21:38', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_email_template`
--

CREATE TABLE `ci_email_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` mediumtext,
  `body` mediumtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_email_template`
--

INSERT INTO `ci_email_template` (`id`, `name`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Debit Alert', 'Transaction Alert [Debit: transaction_amount]', '<h3>Dear user_full_name,</h3>\r\n	<p>Your account has been Debited</p>\r\n <center>\r\n	<h4>transaction_amount</h4>\r\n	</center>\r\n	<p><strong style=\"color: site_theme_color\">Transaction Details:</strong></p>\r\n	<table class=\"mail-table\">\r\n  <tr>\r\n    <td class=\"table-left\">Account Type</td>\r\n    <td class=\"table-right\">account_type</td>\r\n  </tr>\r\n  <tr>\r\n    <td class=\"table-left\">Account Number</td>\r\n    <td class=\"table-right\">account_number</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Account Name</td>\r\n    <td class=\"table-right\">account_name</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Description</td>\r\n    <td class=\"table-right\">the_description</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Transaction ID</td>\r\n    <td class=\"table-right\">reference_id</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Date</td>\r\n    <td class=\"table-right\">current_date</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Available Balance</td>\r\n    <td class=\"table-right\">available_balance</td>\r\n  </tr>\r\n</table>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(29, 'Credit Alert', 'Transaction Alert [Credit: transaction_amount]', '<h3>Dear user_full_name,</h3>\r\n	<p>Your account has been Credited</p>\r\n <center>\r\n	<h4>transaction_amount</h4>\r\n	</center>\r\n	<p><strong style=\"color: site_theme_color\">Transaction Details:</strong></p>\r\n	<table class=\"mail-table\">\r\n  <tr>\r\n    <td class=\"table-left\">Account Type</td>\r\n    <td class=\"table-right\">account_type</td>\r\n  </tr>\r\n  <tr>\r\n    <td class=\"table-left\">Account Number</td>\r\n    <td class=\"table-right\">account_number</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Sender</td>\r\n    <td class=\"table-right\">the_sender</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Description</td>\r\n    <td class=\"table-right\">the_description</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Transaction ID</td>\r\n    <td class=\"table-right\">reference_id</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Date</td>\r\n    <td class=\"table-right\">current_date</td>\r\n  </tr>\r\n		<tr>\r\n    <td class=\"table-left\">Available Balance</td>\r\n    <td class=\"table-right\">available_balance</td>\r\n  </tr>\r\n</table>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(28, 'Reset Password', 'Password Reset Validation', '<h3>Hello user_full_name,</h3>\r\n<p>\r\nYou have requested to reset your password<br/> \r\nKindly Login with the following password:\r\n</p>\r\n<h3>new_password</h3>\r\n<p>You are required to change your password immediately after login</p>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(26, 'Support Ticket', 'Support Ticket Notification', '<h3>New Support Ticket from user_full_name - user_email</h3>\r\n					<p><b>Title: </b>ticket_title</p>\r\n					<p><b>Department: </b>ticket_dept</p>\r\n           <strong>Content:</strong><br> ticket_description\r\n					<p>\r\n<br>\r\n<b>Date: </b>current_date</p>\r\n<br>\r\n<b>Reference: </b>ticket_reference', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(27, 'Check Deposit', 'New Check Deposit', '<p>You have a new Check Deposit Upload<br> Details:</p><p><b>Name: </b>user_full_name</p><p><b>Email: </b>user_email</p><p><b>Remarks: </b>the_remarks</p><p><b>Date: </b>current_date</p><p><b>Front Photo: </b><a href=\\\"\\\\\"site_upload_folder/the_front\\\\\"\\\" target=\\\"\\\\\"_blank\\\\\"\\\">VIEW FRONT</a></p><p><b>Back Photo: </b><a href=\\\"\\\\\"site_upload_folder/the_back\\\\\"\\\" target=\\\"\\\\\"_blank\\\\\"\\\">VIEW BACK</a></p>', '2023-02-11 11:36:30', '2023-10-01 00:41:15'),
(30, 'Login Notification', 'New Login Notification', '<h3>Hi Admin</h3>\r\n			<p>A new login has been detected on <strong>site_url</strong><br> See details below</p>\r\n			<p><strong style=\"color: site_theme_color\">Date: </strong>current_date</p>\r\n			<p><strong style=\"color: site_theme_color\">Account Name: </strong>user_full_name</p>\r\n			<p><strong style=\"color: site_theme_color\">Account ID: </strong>acc_id</p>\r\n			<p><strong style=\"color: site_theme_color\">IP Address: </strong>ip_address</p>\r\n			<p><strong style=\"color: site_theme_color\">Location Details (From IP Address): </strong>login_location</p>\r\n', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(31, 'OTP', 'site_name OTP Authentication', '<h3>Dear user_full_name,</h3>\r\n<p>Please approve your transaction with the One Time Passcode (OTP) below:</p>\r\n<h2 style=\"color: site_theme_color\">89012<br></h2>', '2023-02-11 11:36:30', '2023-10-01 00:38:49'),
(32, 'Deposit Request', 'Deposit Request', '<h4>New Deposit Request</h4>\r\n					<p>\r\n          <b>Name: </b>user_full_name<br>\r\n					<b>Email: </b>user_email<br>\r\n					<b>Amount: </b>transaction_amount<br>\r\n<b>Method: </b>the_coin<br>					<b>Transaction Reference: </b>the_transaction_ref<br>\r\n					<b>Date: </b>current_date\r\n					</p>', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(33, 'Email', 'the_subject', 'the_message', '2023-02-11 11:36:30', '2023-05-16 05:18:38'),
(34, 'Transfer Notification', 'Transfer Notification', '<h3 style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Fira Sans&quot;, &quot;Helvetica Neue&quot;, &quot;Apple Color Emoji&quot;, sans-serif; color: rgb(54, 54, 66);\">Hello user_full_name</h3><p>A transfer has occured on the account below:</p><p><span style=\"font-weight: bolder;\">Name:&nbsp;</span>user_full_name</p><p><span style=\"font-weight: bolder;\">Account ID:</span><br>account_id<br><span style=\"font-weight: bolder;\">Transfer Type:&nbsp;</span>transfer_type</p><br><span style=\"font-weight: bolder;\">Date:&nbsp;</span>current_date<p></p><br><span style=\"font-weight: bolder;\">Reference:&nbsp;</span>reference<h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" fira=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" sans-serif;=\"\" color:=\"\" rgb(54,=\"\" 54,=\"\" 66);\"=\"\"></h3>', '2023-02-11 11:36:30', '2023-08-04 06:03:22'),
(35, 'Transaction Approval', 'Transaction Approved', '<h3 style=\"font-family: -apple-system, BlinkMacSystemFont, &quot;Fira Sans&quot;, &quot;Helvetica Neue&quot;, &quot;Apple Color Emoji&quot;, sans-serif; color: rgb(54, 54, 66);\">Dear user_full_name,</h3><p>Congratulations!<br>Your Transaction has been confirmed and approved successfully.</p><p><span style=\"font-weight: bolder;\">Transaction Details:</span><br><span style=\"font-weight: bolder;\">Transaction Type:&nbsp;</span>transaction_type<br><span style=\"font-weight: bolder;\">Method:&nbsp;</span>transaction_method<br><span style=\"font-weight: bolder;\">Reference ID:&nbsp;</span>transaction_reference<br><span style=\"font-weight: bolder;\">Date Confirmed:&nbsp;</span>current_date</p><p>Login to your account and see more details</p><h3 style=\"font-family: -apple-system, BlinkMacSystemFont, \" fira=\"\" sans\",=\"\" \"helvetica=\"\" neue\",=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" sans-serif;=\"\" color:=\"\" rgb(54,=\"\" 54,=\"\" 66);\"=\"\"></h3>', '2023-02-11 11:36:30', '2023-08-04 05:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_faqs`
--

CREATE TABLE `ci_faqs` (
  `id` int(11) NOT NULL,
  `question` text,
  `answer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_faqs`
--

INSERT INTO `ci_faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(3, 'Is the company registered and regulated', '<p><font color=\"#011f4c\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 16px;\">Yes, our Company is totally a legal platform licensed by the Securities and Exchange Commission&nbsp;to carry out financial activities in over 105 countries?</span></font><br></p>', '2023-02-08 19:56:49', '2023-05-16 05:18:38'),
(4, 'What is the field of activity of the company?', '<p>The company is engaged in cryptocurrency and Forex trading. Our staff of highly qualified traders and financial experts shows high profit rates from year to year. The company\'s priorities are access to international markets and long-term cooperation with investors.<br></p>', '2023-02-08 20:12:08', '2023-05-16 05:18:38'),
(5, 'Who can be a Customer of Givens Hall Bank?', '<p>Everyone can be a Customer of Givens Hall Bank, but he\\she must be not less 18 years old.<br></p>', '2023-02-08 20:12:46', '2023-10-11 10:16:09'),
(6, 'How can I become an investor in the company?', '<p>You may become a client of the company and it is totally free of charge. All you need is to sign up and fill all required fields. It takes less than 2 minutes to complete sign up.<br></p>', '2023-02-08 20:15:33', '2023-05-16 05:18:38'),
(7, 'How reliable is the company in terms of security and personal data?', '<p>We pay great attention to security and privacy. All information on our website is protected by SSL. We do not divulge any personal data of our customers to third parties. Your participation is strictly confidential.<br></p>', '2023-02-08 20:16:20', '2023-05-16 05:18:38'),
(8, 'Is there a KYC verification process?', '<p>Yes, we do require verification documents confirming the identity, address or origin of account owner.<br></p>', '2023-02-08 20:16:57', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_news`
--

CREATE TABLE `ci_news` (
  `id` int(11) NOT NULL,
  `title` text,
  `body` longtext,
  `status` varchar(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_news`
--

INSERT INTO `ci_news` (`id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CryptoPro Investment Script', '&lt;p&gt;&lt;font face=&quot;pp-sans-big-regular, Helvetica, Arial, sans-serif&quot; color=&quot;#0c0c0d&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;Welcome to CryptoPro Investment Script Crafted by the Kinsmen Team. Hwo&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', '0', '2022-10-11 17:06:13', '2023-10-11 10:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `ci_notifications`
--

CREATE TABLE `ci_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reference` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `notice` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_payment_gateways`
--

CREATE TABLE `ci_payment_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `ticker` varchar(10) DEFAULT NULL,
  `api` int(11) NOT NULL DEFAULT '0',
  `barcode` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_payment_gateways`
--

INSERT INTO `ci_payment_gateways` (`id`, `name`, `status`, `ticker`, `api`, `barcode`, `created_at`, `updated_at`) VALUES
(36, 'Bitcoin (BTC)', 1, 'btc', 0, 1, '2022-11-11 10:36:51', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `data` blob NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `data`, `timestamp`) VALUES
('45412a94750e108c640ce5e182a4394914fc7b90', '105.113.88.74', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353335313534303b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2024-01-15 20:46:04'),
('d0f2ec54fb4818091ebfeb6ebe2dee3de9d2a227', '105.113.88.74', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353335313131333b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f6372656469742d6361726473223b, '2024-01-15 20:40:54'),
('bef3c433333fff6d302940e611919de507560538', '105.113.88.74', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353335323730343b5f63695f70726576696f75735f75726c7c733a3232393a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f62616e6b2f66617173223b, '2024-01-15 21:06:27'),
('2ffd33deb3d451bed7a0bf5e563d751a680ce9cb', '82.165.224.54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337343134373b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2024-01-16 03:02:27'),
('1b56f61fe0451dde104442b35d509e42faf29eab', '82.165.224.118', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337343136323b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f707269766163792d706f6c696379223b, '2024-01-16 03:02:42'),
('131d3583dcfe09dc9ae4a0a131cd422be817e017', '82.165.224.22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337343137323b5f63695f70726576696f75735f75726c7c733a33383a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f61626f75742d7573223b, '2024-01-16 03:02:52'),
('0f31941a135e48f2fa04f86457a16eb888c3ec89', '82.165.224.54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337353431343b, '2024-01-16 03:23:34'),
('844fdeb31497c333dda3960159e9b43df45d299f', '82.165.224.86', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337353431353b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f62616e6b223b, '2024-01-16 03:23:35'),
('c1b1467d072429eb92463d7d502129780d7fee20', '82.165.224.22', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337353431363b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f627573696e6573732d62616e6b696e67223b, '2024-01-16 03:23:36'),
('5929123fb39dedf36765c47dae5cf6e484de2f6e', '82.165.224.102', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337353431393b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f626f72726f77223b, '2024-01-16 03:23:39'),
('405c4eb1096fb15a1e53112517e5c76d7a710aab', '82.165.224.38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353337353432383b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f63617265657273223b, '2024-01-16 03:23:48'),
('9f8793b06b809f02e39ad4c46ebfcc66feab2ae2', '18.116.74.7', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353432373634353b5f63695f70726576696f75735f75726c7c733a33303a2268747470733a2f2f6379636c6f6e6576657273652e6f72672f686f6d652f223b, '2024-01-16 17:54:05'),
('c0c494434bd7b7df5c2ad6f5e2fb69bfe2be17f2', '18.116.74.7', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730353432373634363b, '2024-01-16 17:54:06'),
('e0a3ab50cb63369992a33825fbdfa4a535563596', '197.210.54.70', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363032393830383b5f63695f70726576696f75735f75726c7c733a33333a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f61646d696e223b61646d696e7c733a353a2261646d696e223b, '2024-01-23 17:10:53'),
('dc2f18ea576e2efbedff743911a9a22fb83293bb', '149.154.161.216', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363032393837373b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 17:11:17'),
('646d3fa5159e4b647ea0184e13118cfec77f1f36', '149.154.161.236', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363032393838363b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 17:11:26'),
('fafb4d7a498ebb1eca86b9209ffc56bb4e37a5b7', '105.112.218.154', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363033323231313b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 17:50:21'),
('01f883012059152c73cf0315bcf2540b5c521c55', '105.112.218.154', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363033323431353b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 17:53:35'),
('457c49aa71a651de5ef36b59b5808da596ca9670', '105.112.218.154', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363033323431363b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 17:53:36'),
('641d84682884c52f7559b3d49fd0207a522e9888', '197.210.85.30', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363033323834333b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 18:00:48'),
('9590711429ad483f86e465ce1951e3b68df5443f', '197.210.55.112', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363034343135373b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 21:09:17'),
('4d6e26faa6ed45ca10a59752bac2a0a438d0966c', '197.210.55.112', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363034343135393b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 21:09:19'),
('7e7c85dfbaf355e3966d83950c8804a6bfe0f7a8', '105.120.132.72', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363034343334333b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-23 21:12:48'),
('3a2121e6bf6d323b9ae30d5c37c9ec9f5579a0fe', '54.36.148.93', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363037363337303b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-24 06:06:10'),
('ef6c984d495fb7629eaa3dd18367be0d900e86be', '54.36.148.175', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363038383736343b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-24 09:32:44'),
('a500b3bdc0d50e0970e8566364080c0c6f2af782', '184.94.240.88', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363131383838393b5f63695f70726576696f75735f75726c7c733a34353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f61626f75742d75732f61626f75742d7573223b, '2024-01-24 17:54:57'),
('90c0e65f56b0b403b84b3b01c9996d5a3952905a', '105.112.104.223', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363132313933383b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-24 18:45:40'),
('4805a164c0303aaec74ee1053e2cecb94b4f9256', '72.130.230.71', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363132333732313b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b223b, '2024-01-24 19:16:15'),
('8b22c05f71a16dc663d5d0e0d079422b5e8c531c', '54.36.148.23', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373233373b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f61626f75742d7573223b, '2024-01-25 04:33:57'),
('81d7e6318b1c5b625b617dd43a4bcf8c8733ccb1', '54.36.149.10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373234363b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b223b, '2024-01-25 04:34:06'),
('c9fffaac07716093dd015ee080cbbaab1023836d', '54.36.148.26', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373235363b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f626f72726f77223b, '2024-01-25 04:34:16'),
('d65827672b20888a1df4e8f38719df8043578854', '54.36.149.102', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373236343b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f627573696e6573732d62616e6b696e67223b, '2024-01-25 04:34:24'),
('36e967fd189ed0802722b2ddc31cd0581ce2835f', '54.36.148.158', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373237363b5f63695f70726576696f75735f75726c7c733a33353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f63617265657273223b, '2024-01-25 04:34:36'),
('06ce74a82df8b6a175ca79a5aa2480cbe305ef5b', '54.36.148.216', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373238373b, '2024-01-25 04:34:47'),
('90ece3e64ed4ebb13b6523846bf9c39e28e35946', '54.36.148.81', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373239383b5f63695f70726576696f75735f75726c7c733a34303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f6372656469742d6361726473223b, '2024-01-25 04:34:58'),
('abce3adcb0131288d1f0541c1c83c2854db0b92e', '54.36.148.204', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373331343b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f637573746f6d65722d737570706f7274223b, '2024-01-25 04:35:14'),
('7045d1f7e26f9ab6086bbc6033b4247b925c4eaa', '54.36.149.98', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373332383b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f66617173223b, '2024-01-25 04:35:28'),
('1087d240143a3a92ae947000eaaba0803ea1085d', '54.36.148.100', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135373334393b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f676976696e672d6261636b223b, '2024-01-25 04:35:49'),
('41f3e7cf9eec21b44fbf2b3a0a75fbb913e3b49c', '54.36.149.68', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383130303b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f686f772d746f2d736176652d666f722d73756d6d65722d7661636174696f6e223b, '2024-01-25 04:48:20'),
('64416da27e09dc4519e72d23548703bf0f6e5fab', '54.36.149.106', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383134313b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f696e76657374223b, '2024-01-25 04:49:01'),
('3056816f4ea185f90fa6fdac6efbcdecd445d387', '54.36.148.74', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383232323b, '2024-01-25 04:50:22'),
('1cc667419a3684303ee60cdd993aca398b3d42f1', '54.36.149.39', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383235303b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f6e657773223b, '2024-01-25 04:50:50'),
('76b3199a154221e382fda930dea6e3b8c824b7a0', '54.36.148.81', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383333363b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7061796d656e7473223b, '2024-01-25 04:52:16'),
('f81de0492c4966d9e7ec7a188a0ed14b557b228f', '54.36.148.199', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383338343b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f707269766163792d706f6c696379223b, '2024-01-25 04:53:04'),
('0c724415085a018f6c5d47cd1fa1079046fb6a59', '54.36.148.100', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383430333b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f73617665223b, '2024-01-25 04:53:23'),
('4a0207f9b2cb757e50a4ddfbc12979080e0b1318', '54.36.148.128', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383431363b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-25 04:53:36'),
('ec192f7189d08d369ecea07a44844023b080c10e', '54.36.148.161', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383432393b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-25 04:53:49'),
('57529e7429141fb3c1bf510c70f60397b6b5c664', '54.36.148.12', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383433393b5f63695f70726576696f75735f75726c7c733a38353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7468652d696d706163742d6f662d726973696e672d72617465732d616e642d696e666c6174696f6e2d6f6e2d796f75722d627573696e657373223b, '2024-01-25 04:53:59'),
('c8bbed53513c794d097e97729f459f5df582afe1', '54.36.149.59', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383535393b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f61626f75742d7573223b, '2024-01-25 04:55:59'),
('7876fb3839ac64f325ff0accda6acbd99f4b2289', '54.36.148.227', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383636303b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f676976696e672d6261636b223b, '2024-01-25 04:57:40'),
('cd78192f9ddd6f7356689320232825679916f162', '54.36.148.189', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383638343b5f63695f70726576696f75735f75726c7c733a35393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f686f772d746f2d736176652d666f722d73756d6d65722d7661636174696f6e223b, '2024-01-25 04:58:04'),
('ddac933c488c18b46df04fa57bc61477c868dfcd', '54.36.149.6', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383731383b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f696e76657374223b, '2024-01-25 04:58:38'),
('0abdf855123acd5270f2068ace8039d37e444f67', '54.36.149.77', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383734363b, '2024-01-25 04:59:06'),
('f87793211b59fa447e2d69873de7835ba2a7be71', '54.36.149.62', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383735323b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f6e657773223b, '2024-01-25 04:59:12'),
('0022b5fa013c8ee68ecadeb63153b5d2259accec', '54.36.148.84', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383736333b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7061796d656e7473223b, '2024-01-25 04:59:23'),
('11ccb1a1f333cbf650721d97d8c8d719f4e5e3fe', '54.36.148.118', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383739373b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f707269766163792d706f6c696379223b, '2024-01-25 04:59:57'),
('c948bb39c0f61f84b225c8bb4241d90c24d2bf87', '54.36.148.189', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383833303b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f73617665223b, '2024-01-25 05:00:30'),
('2d846d6105af134d207b50e15fc8262e86c4b39c', '54.36.149.2', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383834373b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-25 05:00:47'),
('fe16dff7b852f2b86c4c1071acd3cc23344fa6cd', '54.36.149.19', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383835363b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-25 05:00:56'),
('dbb015564208ea817a482c801ffc02ddb7e2690a', '54.36.149.102', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363135383836373b5f63695f70726576696f75735f75726c7c733a38353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7468652d696d706163742d6f662d726973696e672d72617465732d616e642d696e666c6174696f6e2d6f6e2d796f75722d627573696e657373223b, '2024-01-25 05:01:07'),
('ed091a14d9c3a8276e89e1e3657c59a171807231', '54.36.149.49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363137373432353b, '2024-01-25 10:10:25'),
('c3201e2831845428458582c11c49743910131721', '54.36.148.242', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363138303434363b, '2024-01-25 11:00:46'),
('6ef9fd1c46394f25c9f5dc45cc0f4f6788d64716', '54.36.148.76', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363138383734313b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6372656469742d63617264732e68746d6c223b, '2024-01-25 13:19:01'),
('7f6e919af140bda14bc5113b32d96ed751d7f46b', '103.253.46.54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363139393230353b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-25 16:13:34'),
('4ab0fae5067cae7c7fd657b605177dbaf1803e78', '54.36.148.223', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363230353139373b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b223b, '2024-01-25 17:53:17'),
('61ee5eb23b48e44486d94d2e14506c80da50474e', '54.36.149.93', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363231303235363b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f626f72726f77223b, '2024-01-25 19:17:36'),
('dd60cb1f03bc2859691759380065a2fbcf58c1f3', '54.36.148.194', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363231323231313b5f63695f70726576696f75735f75726c7c733a33353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f63617265657273223b, '2024-01-25 19:50:11'),
('7fccd2473f4c562e2e056d7baff099b83d83199f', '54.36.149.81', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363231323736323b, '2024-01-25 19:59:22'),
('d6595faaa0eaf43d7eff933054516b03eb6d4a37', '54.36.148.213', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363231333133373b5f63695f70726576696f75735f75726c7c733a34303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f6372656469742d6361726473223b, '2024-01-25 20:05:37'),
('9bff5964c3f5af958241e4d7e1af62e01a0865fb', '54.36.148.73', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363231333433323b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f637573746f6d65722d737570706f7274223b, '2024-01-25 20:10:32'),
('4e84ca877e9b8e803ea33340c5e74a2a06db94fd', '54.36.149.82', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363231333732303b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f66617173223b, '2024-01-25 20:15:20'),
('6a308b7959a911bc2348b4d963b95e787e86b418', '54.36.148.187', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363232373334373b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f627573696e6573732d62616e6b696e67223b, '2024-01-26 00:02:27'),
('6953cf2a36105559e400be9250e4cc7f7ca0dfcd', '54.36.148.253', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233303535323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6372656469742d63617264732e68746d6c223b, '2024-01-26 00:55:52'),
('08dcba3b4cfa39672e44adf97dc23e6b8b94ec47', '54.36.148.224', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233313839313b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f61626f75742d7573223b, '2024-01-26 01:18:11'),
('bd5e09f5f9f0175550ab3ee6aeee2eaa8177c601', '72.130.230.71', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233333437333b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-26 01:45:17'),
('01ac14b6a967b49f0270b3e78601c5b667c330b1', '54.36.148.44', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233333936373b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b223b, '2024-01-26 01:52:47'),
('3c2727eeb0189cc573b2da9699bc9e215db4f9c5', '54.36.148.105', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233343736313b5f63695f70726576696f75735f75726c7c733a35353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f6372656469742d63617264732e68746d6c223b, '2024-01-26 02:06:01'),
('4a1c4e9401bbc9aca646e4336a4726bd08c6e485', '54.36.148.131', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353333323b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f626f72726f77223b, '2024-01-26 02:15:32'),
('55cdd4341470904594b8541cd35286d9766d69d0', '54.36.148.213', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353438323b5f63695f70726576696f75735f75726c7c733a34303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f63617265657273223b, '2024-01-26 02:18:02'),
('1bf4a51794d665b287a09e15b75fa9d1cc8a9d9c', '54.36.148.131', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353730373b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f636865636b696e672d6163636f756e7473223b, '2024-01-26 02:21:47'),
('08ed9d12e6cc39fc41a16b7d7faa858ac52dd9b9', '54.36.148.211', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353734363b5f63695f70726576696f75735f75726c7c733a34353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6372656469742d6361726473223b, '2024-01-26 02:22:26'),
('c8fead2c8f1207617713a9c614d5997ecb6e4b57', '54.36.148.200', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353736393b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f637573746f6d65722d737570706f7274223b, '2024-01-26 02:22:49'),
('48f78fe4ee2c2c31620da169a57b748f845549a6', '54.36.149.84', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353739303b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f66617173223b, '2024-01-26 02:23:10'),
('8227f3f44c9677090ebccdc3ba2de6d6158d6e19', '54.36.148.118', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353830373b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f676976696e672d6261636b223b, '2024-01-26 02:23:27'),
('b2910afc51568b4a710f7b6159bda8fc0d75c1d8', '54.36.148.135', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353833383b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f696e76657374223b, '2024-01-26 02:23:58'),
('5d9d9f6bb71a317ddfc83f3e3492cf647a2e98b8', '54.36.149.50', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353931343b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6e657773223b, '2024-01-26 02:25:14'),
('61e812b143ae97d2ac967e6451ac4c3f90e310a2', '54.36.148.225', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353933393b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f7061796d656e7473223b, '2024-01-26 02:25:39'),
('7d87c690c10c042af0c3018bb387672e8214efb6', '54.36.148.110', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233353936353b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f707269766163792d706f6c696379223b, '2024-01-26 02:26:05'),
('2d19c46208e8f56b9c7500c44e356842280e069c', '54.36.148.71', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233363031303b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f73617665223b, '2024-01-26 02:26:50'),
('414a4c650c60757974e268edc846610d773c90b3', '54.36.148.255', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233363033353b5f63695f70726576696f75735f75726c7c733a37333a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-26 02:27:15'),
('8b6960e301fbf4ef4d506f8d75014352ab2fb62f', '54.36.149.54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233363035343b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-26 02:27:34'),
('4a9d97d1f3cb294f0b3eb1bddbe806a110e708a9', '54.36.149.107', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363233363037353b, '2024-01-26 02:27:55'),
('a8db6410b6284814ebcadf8578252ca79ec34dd6', '54.36.148.162', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234303530373b, '2024-01-26 03:41:47'),
('6f21ab761c64edfa93dfa637a66893036570df71', '54.36.148.201', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234323135343b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f61626f75742d7573223b, '2024-01-26 04:09:14'),
('4748db17246167c04e08d1b520521fa58beec3b3', '54.36.148.222', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234333737313b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f626f72726f77223b, '2024-01-26 04:36:11'),
('aba156dcd4fe04246654d6edf7e0a91f2237c5d5', '54.36.149.84', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234353131393b5f63695f70726576696f75735f75726c7c733a34353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f63617265657273223b, '2024-01-26 04:58:39'),
('23cd31faf936fbe762738d77d754d09b509027ae', '54.36.149.46', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234363632353b5f63695f70726576696f75735f75726c7c733a35353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f636865636b696e672d6163636f756e7473223b, '2024-01-26 05:23:45'),
('eb7168ae18762eb10d51253f8da95915970147b4', '54.36.148.103', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234383032363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f6372656469742d6361726473223b, '2024-01-26 05:47:06'),
('090e3df38b1f81877d93d6ef6a10f2cafc382b75', '54.36.149.71', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363234393338393b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f637573746f6d65722d737570706f7274223b, '2024-01-26 06:09:49'),
('ee3b040cf65778c7726e67b8c723989967df251f', '54.36.148.204', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235313139303b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f66617173223b, '2024-01-26 06:39:50'),
('dbaac600181ae0dfc8ee04901531d3bbf0498d9e', '54.36.148.250', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235333537353b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f676976696e672d6261636b223b, '2024-01-26 07:19:35'),
('181f916ee242b6e1a96fd33600d7afc928c3e34d', '54.36.148.128', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235343530383b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f696e76657374223b, '2024-01-26 07:35:08'),
('8691b743e9c6883232f4dbaed7be69b92f566757', '54.36.148.178', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235353838323b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f6e657773223b, '2024-01-26 07:58:02'),
('401c61762276982aebae4b3a2d07f750048ca536', '197.210.226.75', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235363735333b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-26 08:12:35'),
('f488a9c1fb81fd2f83f50ddedb7cdcc22dad3731', '54.36.149.49', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235363139323b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f7061796d656e7473223b, '2024-01-26 08:03:12'),
('4846c0b5cb453ac4d7ef174dcc37b0f5e752b909', '54.36.148.33', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235363439353b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f707269766163792d706f6c696379223b, '2024-01-26 08:08:15'),
('667cd635d0e02d06b701925f59856d5e7e3a47ab', '54.36.148.9', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235363739363b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f73617665223b, '2024-01-26 08:13:16'),
('7fd243f0ee290fcfabb7a607e8ffc4f2436c36b5', '54.36.148.107', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235373039363b5f63695f70726576696f75735f75726c7c733a37383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-26 08:18:16'),
('fe70bc5c235b8626fc632afd55c6faf306e251c7', '54.36.148.62', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235373332323b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-26 08:22:02'),
('7e1da71a27b7a48d7959548fea457b82a674efd8', '54.36.149.90', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235373535313b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f61626f75742d7573223b, '2024-01-26 08:25:51'),
('a1069c138170a60c2abfd5999a8f98d8da48ecf1', '54.36.148.241', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383336373b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b223b, '2024-01-26 08:39:27'),
('c3cf629e9d4d9f502cb077510e8196485a812846', '54.36.148.211', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383532393b5f63695f70726576696f75735f75726c7c733a35353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f6372656469742d63617264732e68746d6c223b, '2024-01-26 08:42:09'),
('aab71ffa6013116c1f5f26708b68b83fabd9a69d', '54.36.148.250', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383538303b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f626f72726f77223b, '2024-01-26 08:43:00'),
('03de43e0d73eb4b50a4c8fa16e6dc044ad49a577', '54.36.149.71', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383632313b5f63695f70726576696f75735f75726c7c733a34303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f63617265657273223b, '2024-01-26 08:43:41'),
('f7596b8ddcb351dd271b69d5868607ede8d67c8d', '54.36.148.93', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383636323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f636865636b696e672d6163636f756e7473223b, '2024-01-26 08:44:22'),
('c5cfa98cd886587f505301d23ce79ab5464ce847', '54.36.148.209', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383731333b5f63695f70726576696f75735f75726c7c733a34353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6372656469742d6361726473223b, '2024-01-26 08:45:13'),
('2984860edb10563e2c5613de2131ea1ed310e808', '54.36.148.160', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383733383b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f637573746f6d65722d737570706f7274223b, '2024-01-26 08:45:38'),
('74152af216e993015fa246205c72720c70bb4788', '54.36.149.100', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383736373b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f66617173223b, '2024-01-26 08:46:07'),
('22b3e9d36d23a4f92839ac77fac8156d72d31b76', '54.36.148.228', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383738363b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f676976696e672d6261636b223b, '2024-01-26 08:46:26'),
('1c999f9d7a95240a063447d3dabea6240512947e', '54.36.148.14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383831343b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f696e76657374223b, '2024-01-26 08:46:54'),
('64825bc7c97ae592c336788a58f3e00e835e2ce8', '54.36.148.237', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383837373b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6e657773223b, '2024-01-26 08:47:57'),
('ef77ca4a5982bf940b17b6dc0b16b3829c475c3b', '54.36.149.48', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383839323b5f63695f70726576696f75735f75726c7c733a34313a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f7061796d656e7473223b, '2024-01-26 08:48:12'),
('d6bc311761ce3ecaa5863e457792d7ad2aaeeebe', '54.36.148.96', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383931353b5f63695f70726576696f75735f75726c7c733a34373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f707269766163792d706f6c696379223b, '2024-01-26 08:48:35'),
('ea215a6c774eba78551f001a96512c7b70f7a74a', '54.36.149.106', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383933373b5f63695f70726576696f75735f75726c7c733a33373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f73617665223b, '2024-01-26 08:48:57'),
('d4079e1774eaca6e49b588df7a6d8832d85dfcb6', '54.36.148.179', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235383935353b5f63695f70726576696f75735f75726c7c733a37333a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-26 08:49:15'),
('794fd76182293bf6eb91237db0e8d61e85ba2a2a', '54.36.149.67', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363235393030303b5f63695f70726576696f75735f75726c7c733a36373a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-26 08:50:00'),
('c5b326763701c1ff35a6402f3b8d41a6c15ed062', '54.36.148.128', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363236353438393b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f61626f75742d7573223b, '2024-01-26 10:38:09'),
('8c50a9d832e1b9e992fe12344afac8169e6eef3f', '54.36.148.113', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363236363430363b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f626f72726f77223b, '2024-01-26 10:53:26'),
('0bf72a14418077a2909fd5d67dfc1bd1345f726d', '54.36.148.167', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363236373339303b5f63695f70726576696f75735f75726c7c733a34353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f63617265657273223b, '2024-01-26 11:09:50'),
('7e7841cb9af49a03ce5d80605237a479d9e58211', '54.36.148.248', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363236383433373b5f63695f70726576696f75735f75726c7c733a35353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f636865636b696e672d6163636f756e7473223b, '2024-01-26 11:27:17'),
('e2255aba74a6e7e4ceb673e98e6158938b515827', '54.36.149.57', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237303135363b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f6372656469742d6361726473223b, '2024-01-26 11:55:56'),
('a26589f72d87d907621f39f4134054a9095f494f', '54.36.148.113', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237313034393b5f63695f70726576696f75735f75726c7c733a35343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f637573746f6d65722d737570706f7274223b, '2024-01-26 12:10:49'),
('b00ad211f93842bb492b7d6de014f6bdd60ad41a', '54.36.148.200', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237313930353b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f66617173223b, '2024-01-26 12:25:05'),
('c75d2a50635ee59f58ce7fe8adb963e6aa3552ce', '54.36.148.62', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237323734393b5f63695f70726576696f75735f75726c7c733a34393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f676976696e672d6261636b223b, '2024-01-26 12:39:09'),
('621e656870725020311f9e8f9e3f15944532e565', '54.36.148.102', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237333531383b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f696e76657374223b, '2024-01-26 12:51:58'),
('4d56a54e4df8213bc8ea112083954c996cf687b3', '54.36.149.62', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237353735373b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f6e657773223b, '2024-01-26 13:29:17'),
('57efbbb7c6c615b8602d6a627b4685aa80954720', '54.36.148.190', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237363635353b5f63695f70726576696f75735f75726c7c733a34363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f7061796d656e7473223b, '2024-01-26 13:44:15'),
('aa423032755ce53e2606f016cc6396ec9487da98', '101.44.250.123', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237373035343b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-26 13:50:54'),
('d5e6e900738edfd42f6e335cb730628f0c0a5643', '54.36.148.45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237373631343b5f63695f70726576696f75735f75726c7c733a35323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f707269766163792d706f6c696379223b, '2024-01-26 14:00:14'),
('0e400e4de918e3c9c01b2e7b66e0ab4800c2ac0e', '54.36.148.178', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237383431393b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f73617665223b, '2024-01-26 14:13:39'),
('66966416440f5de197bc0126743a0c927f32a774', '54.36.148.252', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363237393335303b5f63695f70726576696f75735f75726c7c733a37383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-26 14:29:10'),
('810e1d4f8fc9f09da900d112466868c770d09b84', '54.36.148.165', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363238303335353b5f63695f70726576696f75735f75726c7c733a37323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f62616e6b2f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-26 14:45:55'),
('cbc1621eb3ba6a47cb5ab0be0d910942b15d8d5c', '101.44.248.255', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363337323238333b5f63695f70726576696f75735f75726c7c733a36383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f73696d706c652d776179732d746f2d6d616e6167652d612d636865636b696e672d6163636f756e74223b, '2024-01-27 16:18:03'),
('967612a1bf177bda880c5b06c151898549f0fe67', '45.39.194.41', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363337363139393b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-27 17:23:21'),
('1927f1bf8ae954fd1571a12171b291c8945cf18d', '101.44.248.238', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363337363233313b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-27 17:23:51'),
('761e6cf3314a40e38233929405a86e8c9d2b5d27', '101.44.249.183', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363337363433333b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f637573746f6d65722d737570706f7274223b, '2024-01-27 17:27:13'),
('940b5d5edd30fca067c3d5272c925c5880f71d3f', '101.44.249.110', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363338303336383b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f6e657773223b, '2024-01-27 18:32:48'),
('d20ab331247c105c983623555b756d04a0c5e5d6', '101.44.251.155', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363338353831363b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f696e76657374223b, '2024-01-27 20:03:36'),
('72ddadf287321700a008ffd3aef8304893c74674', '101.44.248.164', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363338363131333b5f63695f70726576696f75735f75726c7c733a33343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f626f72726f77223b, '2024-01-27 20:08:33'),
('3d741a9dd74a2ce17de584df548258a0bb46aada', '197.210.55.97', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363338373832383b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-27 20:37:12'),
('9dcdd4e480bfb71c82f839e3b76ec2641ed4d43d', '105.112.221.210', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363339363637363b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b61646d696e7c733a353a2261646d696e223b757365725f69647c733a323a223131223b, '2024-01-27 23:05:14'),
('adee4c802895b4927c0b5ad5a8115277ddbbaaa3', '101.44.250.16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363430373438343b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f66617173223b, '2024-01-28 02:04:44'),
('c7051c1e2841bc1c5c11f734e8ca0bb5be0cc8fa', '101.44.248.188', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363431313231363b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f73617665223b, '2024-01-28 03:06:56'),
('0412d7805755016a4669ee002fff409a0631abae', '101.44.248.215', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363431323630383b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f61626f75742d7573223b, '2024-01-28 03:30:08'),
('19145fc7f705d75e0c9efc8cb90c319949fcfb56', '101.44.250.245', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363431353530303b5f63695f70726576696f75735f75726c7c733a33363a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7061796d656e7473223b, '2024-01-28 04:18:20'),
('79a4ed41962ab820316e8b4b659e0ae85a6304f0', '101.44.249.67', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363432303133343b5f63695f70726576696f75735f75726c7c733a34343a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f627573696e6573732d62616e6b696e67223b, '2024-01-28 05:35:34'),
('7a1cb780ca108b20e96de1a78ea327a2a6fb06be', '105.112.102.230', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363432333435363b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f75736572223b61646d696e7c733a353a2261646d696e223b757365725f69647c733a323a223131223b, '2024-01-28 06:30:56'),
('599d1f3b8cc9dea831cd2cebd7b65e382a61b94c', '101.44.248.181', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363432383036353b5f63695f70726576696f75735f75726c7c733a38353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7468652d696d706163742d6f662d726973696e672d72617465732d616e642d696e666c6174696f6e2d6f6e2d796f75722d627573696e657373223b, '2024-01-28 07:47:45'),
('5d4bd2efa132b2ee6950a8c2496bce7fb56a6653', '159.138.101.120', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363432383037373b, '2024-01-28 07:47:57'),
('8e7d9a558d77c9504245430ee898ee890ccbba08', '101.44.250.158', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363433353130313b5f63695f70726576696f75735f75726c7c733a36323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f7461782d636865636b6c6973742d352d7468696e67732d746f2d72656d656d626572223b, '2024-01-28 09:45:01'),
('7b34240e1ee5b2472dfb04ae63c98a9e790b7e06', '101.44.251.95', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363433363030353b, '2024-01-28 10:00:06'),
('576923ed4b1dd69561c606e1223c6cf833ee3f1a', '101.44.250.247', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363433383230393b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b223b, '2024-01-28 10:36:49'),
('8fefdb0fe5559dc38c268d243714178c51034f04', '101.44.251.186', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363433383337313b5f63695f70726576696f75735f75726c7c733a34303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f6372656469742d6361726473223b, '2024-01-28 10:39:31'),
('5865b32b7d960b55b6151c96a63608b74d51f006', '105.112.102.230', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363434313335373b5f63695f70726576696f75735f75726c7c733a33333a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f61646d696e223b61646d696e7c733a353a2261646d696e223b, '2024-01-28 11:29:48'),
('024da5a133aec163baceaeb216e4456ae6354e0e', '101.44.250.236', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363434373535373b5f63695f70726576696f75735f75726c7c733a33393a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f676976696e672d6261636b223b, '2024-01-28 13:12:37'),
('4320050bb2e1c53a0a23785790fe98f654d3eff5', '101.44.248.45', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363435323335343b5f63695f70726576696f75735f75726c7c733a33353a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f63617265657273223b, '2024-01-28 14:32:34'),
('4f9fde5e3d77dfd73d4ac91cceac6fe64b78d33d', '197.210.85.73', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363435313530323b5f63695f70726576696f75735f75726c7c733a33323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f75736572223b61646d696e7c733a353a2261646d696e223b757365725f69647c733a323a223131223b, '2024-01-28 14:21:36'),
('85ef16e8872ca6368e107d5d8d274fb5f54498c1', '105.112.102.230', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363434383937323b5f63695f70726576696f75735f75726c7c733a35303a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f62616e6b2f6372656469742d63617264732e68746d6c223b, '2024-01-28 13:38:08'),
('8935fe6029915d02651f624861ab00e1bd4ecb59', '101.44.249.40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363435363638363b5f63695f70726576696f75735f75726c7c733a34323a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f707269766163792d706f6c696379223b, '2024-01-28 15:44:46'),
('9fcd1fbe1ec95a3ff54beeb01472be2f26735e38', '197.210.85.14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363531303535343b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-29 06:42:34'),
('cdd6baac79c925433e071b0894103ed01ce26698', '197.210.85.14', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363531303535343b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-29 06:42:34'),
('4bc6a1b742c961bd78b1d1d9dd704dd181ce046d', '105.113.69.90', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363531303537313b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-29 06:43:14'),
('fe3c5dcb5c1ea401f3b64556f31e8cf0be89d1be', '105.113.90.87', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363532303836363b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-29 09:34:42'),
('729cea378947a1a87355763b8f4c8e2cdf89fc06', '105.112.209.225', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363532343939323b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-29 10:43:12'),
('73599c02f76f904b3b7df2a113b3d28d0cf9c9d5', '105.112.208.216', 0x5f5f63695f6c6173745f726567656e65726174657c693a313730363532353839313b5f63695f70726576696f75735f75726c7c733a32383a2268747470733a2f2f68656c706c6162732e73746f72652f686f6d652f223b, '2024-01-29 10:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `ci_settings`
--

CREATE TABLE `ci_settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_description` longtext,
  `company_keyword` text,
  `company_email` varchar(255) DEFAULT NULL,
  `noreply` varchar(100) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `abrv` varchar(100) DEFAULT NULL,
  `chat_code` text,
  `theme_color` varchar(255) DEFAULT NULL,
  `secondary_color` varchar(255) NOT NULL DEFAULT '#000',
  `theme` varchar(100) NOT NULL DEFAULT 'finapp-light',
  `template` varchar(100) NOT NULL DEFAULT 'kinsmen-sky',
  `max_upload` varchar(100) NOT NULL DEFAULT '5',
  `company_logo` varchar(100) DEFAULT NULL,
  `company_favicon` varchar(100) DEFAULT NULL,
  `min_deposit` int(11) NOT NULL DEFAULT '500',
  `recaptcha` int(11) NOT NULL DEFAULT '1',
  `captchaPublicKey` varchar(255) DEFAULT NULL,
  `captchaPrivateKey` varchar(255) DEFAULT NULL,
  `live_chat` int(11) NOT NULL DEFAULT '1',
  `im_chat` int(11) NOT NULL DEFAULT '1',
  `im_position` varchar(100) DEFAULT 'left',
  `whatsapp` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `email_header` longtext,
  `email_footer` longtext,
  `otp` int(11) NOT NULL DEFAULT '1',
  `wire_fee` int(11) NOT NULL DEFAULT '1',
  `loan` int(11) NOT NULL DEFAULT '1',
  `login_notify` int(11) NOT NULL DEFAULT '1',
  `bank_routing` int(11) NOT NULL DEFAULT '655205039',
  `allow_register` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_settings`
--

INSERT INTO `ci_settings` (`id`, `company_name`, `company_description`, `company_keyword`, `company_email`, `noreply`, `company_address`, `company_phone`, `abrv`, `chat_code`, `theme_color`, `secondary_color`, `theme`, `template`, `max_upload`, `company_logo`, `company_favicon`, `min_deposit`, `recaptcha`, `captchaPublicKey`, `captchaPrivateKey`, `live_chat`, `im_chat`, `im_position`, `whatsapp`, `telegram`, `email_header`, `email_footer`, `otp`, `wire_fee`, `loan`, `login_notify`, `bank_routing`, `allow_register`, `created_at`, `updated_at`) VALUES
(1, 'Givens Hall Bank', 'Mobile Banking, Credit Cards, Mortgages, Auto Loan', 'Given Halls Bank', 'info@givenshallbank.com', 'info@givenshallbank.com', 'The Harbour Center, 42 North\r\nChurch Street, George Town, Cayman Island.', '+111111111111', 'Ghb', '', '#007098', '#c92041', 'finapp-light', 'bank-pro', '5', '1697015550_8f5f23d1b1a5c59155aa.png', '1697015495_a78b0815e536cde60b80.png', 0, 0, '11111111111111111111', '1111111111111111111111111', 0, 0, 'left', '+234', ' ', '<!doctype html>\r\n<html>\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<title>Mail</title>\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n</head>\r\n<body>\r\n	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td width=\"100%\" align=\"center\" valign=\"top\" bgcolor=\"#eeeeee\" height=\"20\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#eeeeee\" align=\"center\" style=\"padding:0px 15px 0px 15px\" class=\"m_2902568367268423488section-padding\">\r\n					<table bgcolor=\"#ffffff\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width:600px\" class=\"m_2902568367268423488responsive-table\">\r\n						<tbody>\r\n							<tr>\r\n								<td>\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n										<tbody>\r\n											<tr>\r\n												<td align=\"center\" style=\"padding:30px; background-color: site_theme_color\">\r\n													<a href=\"site_url\"> \r\n																							<img src=\"site_upload_folder/site_logo\" alt=\"site_name\" width=\"150\" border=\"0\" style=\"vertical-align:middle\" class=\"CToWUd\"> </a>\r\n												\r\n												</td>\r\n											</tr>\r\n											\r\n												<tr>\r\n													<td class=\"m_2902568367268423488content\" style=\"font:15px/21px \\\'Helvetica Neue\\\',Arial,\\\'sans-serif\\\';text-align:left;color:#555555;\">\r\n														<div style=\"padding: 35px 20px\">', '</div>\r\n													</td>\r\n												</tr>\r\n																						<tr>\r\n													<td class=\"m_2902568367268423488content\" style=\"font:15px/21px \\\'Helvetica Neue\\\',Arial,\\\'sans-serif\\\';text-align:left;color:site_theme_color;\">\r\n														<div style=\"padding-left: 20px\">\r\n														<p> <span style=\"color:#000\">Best Regards, </span><br> site_name. </p>\r\n														</div>\r\n													</td>\r\n												</tr>\r\n											\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n							<tr>\r\n								<td width=\"100%\" align=\"center\" valign=\"top\" bgcolor=\"#ffffff\" height=\"20\"></td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#eeeeee\" align=\"center\" style=\"padding:20px 0px\">\r\n					<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"max-width:600px\" class=\"m_2902568367268423488responsive-table\">\r\n						<tbody>\r\n							<tr> </tr>\r\n							<tr>\r\n								<td bgcolor=\"#eeeeee\" align=\"center\">\r\n									<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"max-width:600px\" class=\"m_2902568367268423488responsive-table\">\r\n										<tbody>\r\n											<tr>\r\n												<td style=\"color:#999999;font-size:12px;line-height:16px;text-align:center;font-family:arial,helvetica neue,helvetica,sans-serif\">Copyright current_year | site_name</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</body>\r\n</html>', 0, 1, 0, 1, 251480576, 1, '2022-10-11 17:10:09', '2023-10-11 10:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `ci_support_tickets`
--

CREATE TABLE `ci_support_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_support_tickets`
--

INSERT INTO `ci_support_tickets` (`id`, `reference`, `dept`, `user_id`, `email`, `name`, `description`, `subject`, `loan`, `status`, `created_at`, `updated_at`) VALUES
(1, '631234', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:06:17', '2023-09-30 22:15:23'),
(2, '341082', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:06:25', '2023-09-30 22:11:22'),
(3, '882122', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:06:26', '2023-09-30 22:16:01'),
(4, '655347', 'Crypto Purchase Request', 10, 'cschgga@gmail.com', 'Mike coop', NULL, 'Request to Buy Crypto', 0, 1, '2023-09-30 21:07:06', '2023-09-30 22:08:35'),
(5, '732643', 'Loan', 10, 'cschgga@gmail.com', 'Mike coop', '\r\n		          <p><strong>Name of Applicant </strong> Mike coop</p>\r\n		          <p><strong>Email of Applicant </strong> cschgga@gmail.com</p>\r\n		          <p><strong>Amount Requested </strong> €6,000.00</p>\r\n		          <p><strong>Ocupation </strong> Eng</p>\r\n		          <p><strong>Additional Remarks </strong> Purpose for my loan</p>\r\n		          ', '€6,000.00 Loan Application', 1, 1, '2023-09-30 23:56:26', '2023-10-01 00:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `ci_temp_transfer`
--

CREATE TABLE `ci_temp_transfer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bank_name` varchar(40) DEFAULT NULL,
  `bank_address` varchar(500) DEFAULT NULL,
  `sender_id` varchar(100) DEFAULT NULL,
  `sender_acc` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_acc` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `routing` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  `balance` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_temp_transfer`
--

INSERT INTO `ci_temp_transfer` (`id`, `user_id`, `amount`, `bank_name`, `bank_address`, `sender_id`, `sender_acc`, `reference`, `receiver_name`, `receiver_acc`, `type`, `swift`, `routing`, `remarks`, `status`, `balance`, `month`, `created_at`, `updated_at`) VALUES
(17, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '212719266', 'solo', '11299288783', 'Debit', '14rrsffs', '112www', '', 'Pending', '37100', 'July 2023', '2023-07-31 15:10:29', '2023-07-31 16:10:29'),
(18, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '350727178', 'Solo', '1100001111', 'Debit', 'Wqqcv11', '11667z#3', '', 'Pending', '37100', 'July 2023', '2023-07-31 15:17:57', '2023-07-31 16:17:57'),
(19, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '846264356', 'solo', '1109988882', 'Debit', '1100001', 'gdffsw', '', 'Pending', '37100', 'July 2023', '2023-07-31 15:35:41', '2023-07-31 16:35:41'),
(20, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '270115111', 'John Doe', '112239474774', 'Debit', 'SWLC15672', '1256788', '', 'Pending', '37100', 'August 2023', '2023-08-04 04:45:15', '2023-08-04 05:45:15'),
(21, 6, 1000, 'Jazz Bank', '', '6929707', '003323524228', '392672257', 'John Doe', '11263737883', 'Debit', 'N/A-Local Transer', '256788', 'test', 'Pending', '34100', 'August 2023', '2023-08-04 04:57:54', '2023-08-04 05:57:54'),
(24, 10, 3150, 'Demobank', '333 freemont street', '5117593', '005584875810', '891105516', '', '182737373', 'Debit', 'N/A-Internal Transer', '12345678', 'For items', 'Pending', '6848', 'October 2023', '2023-09-30 23:30:57', '2023-10-01 00:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `ci_testimonials`
--

CREATE TABLE `ci_testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_testimonials`
--

INSERT INTO `ci_testimonials` (`id`, `name`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Ralph Morris', '1675890649_8aba863002df690c2952.png', '<p>I am impressed with the customer service and speed of payout<br></p>', '2023-02-08 21:10:49', '2023-05-16 05:18:38'),
(3, 'Ted Moralee', NULL, '<p>All one has to do is to look at your investment to see how well it is being looked after.</p>', '2023-02-08 21:30:52', '2023-05-16 05:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `ci_transactions`
--

CREATE TABLE `ci_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `coin_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ci_transactions`
--

INSERT INTO `ci_transactions` (`id`, `user_id`, `name`, `email`, `status`, `coin_type`, `coin_id`, `transaction_type`, `amount`, `reference`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Amy Smith', 'amysmith26uk@gmail.com', 0, 'BTC', 36, 'Deposit', '500', '172089', '93a234095f1acb5eec8e66aa675da7ad', '2023-04-09 10:15:00', '2023-05-16 05:18:38'),
(2, 6, 'Demo User', 'info@cycloneverse.org', 0, 'BTC', 36, 'Deposit', '3000', '552667', '3aa8679f45b2c9c05314e337622d43e3', '2023-09-30 20:53:46', '2023-09-30 21:53:46'),
(3, 6, 'Demo User', 'info@cycloneverse.org', 0, 'BTC', 36, 'Deposit', '3000', '352411', '71f2b7c778e794e209b0765ec9aee694', '2023-09-30 20:54:26', '2023-09-30 21:54:26'),
(4, 6, 'Demo User', 'info@cycloneverse.org', 0, 'BTC', 36, 'Deposit', '100', '999148', 'ff3203570832a445f56dc5a055adbd07', '2023-10-06 18:43:54', '2023-10-06 19:43:54'),
(5, 11, 'demo', 'demo@user.com', 0, 'BTC', 36, 'Deposit', '1000.00', '452310', '3160872f5962fc9b9e013cc74fc0efd0', '2024-01-27 23:03:22', '2024-01-28 02:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `ci_transfer`
--

CREATE TABLE `ci_transfer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bank_name` varchar(40) DEFAULT NULL,
  `bank_address` varchar(500) DEFAULT NULL,
  `sender_id` varchar(500) DEFAULT NULL,
  `sender_acc` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_acc` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `swift` varchar(100) DEFAULT NULL,
  `routing` varchar(100) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Successful',
  `balance` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_transfer`
--

INSERT INTO `ci_transfer` (`id`, `user_id`, `amount`, `bank_name`, `bank_address`, `sender_id`, `sender_acc`, `reference`, `receiver_name`, `receiver_acc`, `type`, `swift`, `routing`, `remarks`, `status`, `balance`, `month`, `created_at`, `updated_at`) VALUES
(5, 6, 50000, 'Demo Bank', '333 freemont street', 'John Doe', 'Checking', '343257', 'Demo User', '003323524228', 'Credit', 'BBXXX', '12345678', '', 'Successful', '50000', 'July 2023', '2023-07-29 08:37:16', '2023-07-29 09:37:16'),
(11, 9, 9000, 'Demobank', '333 freemont street', 'Sender ', 'Checking', '959063', 'Franklin okoro', '005542448663', 'Credit', 'BBXXX', '12345678', 'Paid', 'Successful', '18000', 'August 2022', '2023-08-09 08:41:17', '2023-08-09 09:41:17'),
(12, 9, 3000, 'Citi bank', 'Frank', '5772414', '005542448663', '789563354', 'Franklin okoro', '5980928282', 'Debit', 'Dksisjsia', '82827282', 'Paod', 'Successful', '15000', 'August 2023', '2023-08-09 09:20:32', '2023-08-09 10:20:32'),
(13, 11, 500000, 'Givens Hall Bank', 'The Harbour Center, 42 North\r\nChurch Street, George Town, Cayman Island.', 'John Doe', 'Checking', '576069', 'demo', '005525108613', 'Credit', 'GHBXXX', '251480576', 'Hello world', 'Successful', '500000', 'December 2023', '2023-12-14 09:39:51', '2023-12-14 10:39:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_accounts`
--
ALTER TABLE `ci_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Indexes for table `ci_admin`
--
ALTER TABLE `ci_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_basic`
--
ALTER TABLE `ci_basic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_beneficiary`
--
ALTER TABLE `ci_beneficiary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_checks`
--
ALTER TABLE `ci_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_email_template`
--
ALTER TABLE `ci_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_faqs`
--
ALTER TABLE `ci_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_news`
--
ALTER TABLE `ci_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_notifications`
--
ALTER TABLE `ci_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_payment_gateways`
--
ALTER TABLE `ci_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_settings`
--
ALTER TABLE `ci_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_support_tickets`
--
ALTER TABLE `ci_support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letter_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `ci_temp_transfer`
--
ALTER TABLE `ci_temp_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_testimonials`
--
ALTER TABLE `ci_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_transactions`
--
ALTER TABLE `ci_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_transfer`
--
ALTER TABLE `ci_transfer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_accounts`
--
ALTER TABLE `ci_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ci_admin`
--
ALTER TABLE `ci_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_basic`
--
ALTER TABLE `ci_basic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ci_beneficiary`
--
ALTER TABLE `ci_beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_checks`
--
ALTER TABLE `ci_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_email_template`
--
ALTER TABLE `ci_email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ci_faqs`
--
ALTER TABLE `ci_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ci_news`
--
ALTER TABLE `ci_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ci_notifications`
--
ALTER TABLE `ci_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ci_payment_gateways`
--
ALTER TABLE `ci_payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ci_settings`
--
ALTER TABLE `ci_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ci_support_tickets`
--
ALTER TABLE `ci_support_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_temp_transfer`
--
ALTER TABLE `ci_temp_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ci_testimonials`
--
ALTER TABLE `ci_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ci_transactions`
--
ALTER TABLE `ci_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_transfer`
--
ALTER TABLE `ci_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
