# eCommerce Terminologies

Entering the eCommerce development world can be overwhelming due to the sheer number of terminologies and concepts you will need to grasp. Here is a list of must-know eCommerce terminologies for you.

## E-commerce business

E-Shopper Inc. is a growing e-commerce business specializing in electronic gadgets and accessories. The company has been facing challenges with managing their increasing number of orders, maintaining consistent product information across platforms, and providing seamless customer experiences. To address these challenges and streamline their operations, E-Shopper Inc. decides to implement a comprehensive ERP system along with the below systems:

- Order Management System (OMS): Software that tracks sales, orders, inventory, and fulfillment.

- Content Management System (CMS) : A software used to create, manage, and modify digital content on a website without needing specialized technical knowledge.

- Product Information Management (PIM): A system used to manage product data and ensure it's consistent across all platforms.

- Customer Relationship Management (CRM): A system for managing a company’s interactions with current and future customers.

- Checkout System : The process where customers finalize their purchases, provide shipping information, and make payments.

- Shopping Cart: A software component that allows customers to select and store products for purchase.

## General Shopware terminologies

- Sales channel refers to a configured pathway through which a business can sell its products or services. It allows businesses to manage multiple selling platforms, such as different storefronts, marketplaces, and social media shops, from a single backend.

Example: A company using Shopware can set up a primary online store for their general customers and a separate storefront for their B2B clients, each with its own pricing, product catalog, and branding, all managed through the same Shopware installation.

- Customer Group refers to a classification that allows businesses to segment their customers into different categories based on specific criteria such as pricing, discounts, access to products, and other custom settings. This segmentation helps in providing tailored shopping experiences, targeted marketing, and personalized pricing.

Example: A business using Shopware might have different customer groups such as "Retail Customers," "Wholesale Customers," and "VIP Customers." Each group can have different price levels, access to special promotions, and exclusive products. For instance, "Wholesale Customers" might receive bulk pricing discounts, while "VIP Customers" might get early access to new products and additional discounts.

- Delivery Times refer to the estimated time frames within which customers can expect their orders to be delivered. These times are displayed on product pages and during the checkout process, helping customers make informed purchasing decisions based on when they need the products.

Example: In Shopware, a product can have a delivery time of "2-3 business days" for domestic shipping and "5-7 business days" for international shipping. This information is shown on the product page and during checkout, so if a customer selects standard shipping for an item with a "2-3 business days" delivery time, they know approximately when to expect their order.

- Number ranges refer to the sequences used to automatically generate unique identifiers for various entities within the system, such as orders, invoices, customers, and products. These number ranges ensure that each identifier is unique and sequential, helping in the organization and tracking of records.

Example In Shopware, you can set up a number range for order IDs starting from "10000". When a new order is placed, it might receive the ID "10001", the next order "10002", and so on. This helps in keeping track of orders in a systematic and easy-to-reference manner. Similarly, you could have a number range for customer IDs starting from "C0001", making each customer’s ID unique and easily identifiable.

- Rule refer to configurable conditions that determine the behavior of various system functionalities. These rules allow businesses to create custom scenarios for pricing, promotions, shipping, taxes, and other operational aspects based on specific criteria.

Example: A rule can be created in Shopware to offer a 10% discount on all orders over $100. The conditions for this rule could be:

Condition: Order total is greater than or equal to $100.
Action: Apply a 10% discount to the total order value.
When a customer’s cart meets this condition, the rule is triggered, and the discount is automatically applied during the checkout process. This allows for flexible and dynamic management of promotions and other business logic.

- Sitemap refers to a structured list of all the pages on a website, designed to help search engines like Google understand the site's structure and index its content more effectively. A sitemap ensures that all pages, including those deep within the site hierarchy, are discoverable by search engines, thereby improving the site’s SEO.

Example: In Shopware, generating a sitemap will include URLs for various pages such as the homepage, category pages, product pages, blog posts, and any other content pages. For instance, a sitemap might contain entries like:

- `https://www.example.com/` (homepage)
- `https://www.example.com/category/electronics` (category page)
- `https://www.example.com/product/laptop` (product page)
- `https://www.example.com/blog/how-to-choose-a-laptop` (blog post)

These URLs are compiled into an XML file that can be submitted to search engines to facilitate better crawling and indexing of the site.

- Cross selling refers to a sales technique where additional or related products are suggested to customers based on their current selections or purchases. This strategy aims to encourage customers to add more items to their cart, increasing the average order value and enhancing the shopping experience.

- Dynamic Product Groups are product groups that are automatically generated groups of products that meet specific criteria defined by the store administrator. These groups update dynamically based on product attributes, categories, or other conditions, ensuring that the product selection remains relevant and up-to-date without manual intervention.

- Import/Export - Automatically import adn export CSV files for products and orders and use them to send data between Shopware and thorrd-party systems such as PIM, ERP orevalution tools.

## Inventory & Order management

Catalogues refers to the structured collection of products available for sale within the eCommerce platform. It encompasses all products, their descriptions, prices, categories, and attributes that are managed and displayed to customers for browsing and purchasing.

- Product Listings: Includes details such as product names, descriptions, images, and prices.

- Category Organization: Products are organized into categories (e.g., electronics, clothing) for easier navigation.

- Attributes: Additional details like sizes, colors, and specifications are included to inform customer choices.

- Categories refer to organized grouping of products or services into specific sections within a product catalog. Shopware allows you to create a hierarchical structure of categories and subcategories, making it easier to manage and display products logically. For example, a primary category like "Electronics" can have subcategories like "Mobile Phones," "Laptops," and "Accessories."

- Physical products	- Tangible items that can be touched, stored, and transported, such as electronics, clothing, and furniture.

- Digital products - Intangible items that exist in digital form and can be downloaded or accessed online, such as software, e-books, and online courses.

- Dynamic Product Groups - Product groups created based on dynamic rules, such as “Top Sellers”, “New In”, or “Reduced” and roll them out at various points in your online shop. For example, you can dynamically fill categories, product feeds or Shopping Experiences.

- Shipping integration - Decide which suite of shipping options you’ll offer your customers and which shipping providers you’ll work with.

- Category management - Manage your shop’s category structure. Categories are also used to organize shop pages, structure service menus, and set up landing pages.

- Custom Products - Offer your customers customizable products with their choice of text, lettering or color. Tailor the selection interface to the product and options at hand, with everything from checkboxes and text fields through to a comprehensive step-by-step mode.

- Returns management - 	Manually handle your customers' returns directly in the admin.

- Multi-inventory - Manage multiple warehouses and inventories, while always keeping an overview of what’s what.

- Subscriptions - Sell products via subscriptions to reinforce customer loyalty. Under a subscription, products are delivered at regular intervals without the order needing to be actively placed in the shop each time. You’re also free to lay down whatever subscription terms you’d like.

## Payment and Security

- Payment Gateway: A service that authorizes and processes credit card or direct payments for eCommerce.

- Payment integration - Multiple payment options can be offered at your shop’s checkout – choose from an array of international payment service providers.

- SSL (Secure Socket Layer): A security protocol that establishes encrypted links between a web server and a browser.

- PCI DSS (Payment Card Industry Data Security Standard): Security standards designed to protect card information during and after a financial transaction.

- Tokenization: The process of substituting sensitive data with unique identification symbols (tokens) that retain essential information without compromising security.

## Marketing and Sales

- SEO (Search Engine Optimization): Techniques used to improve a website’s visibility in search engine results.

- PPC (Pay-Per-Click): An online advertising model where advertisers pay each time a user clicks on one of their ads.

- Conversion Rate: The percentage of visitors to a website who complete a desired action (e.g., make a purchase).

- A/B Testing: A method of comparing two versions of a webpage or app against each other to determine which one performs better.

## User Experience (UX) and Interface

- UI (User Interface): The means by which a user interacts with a system, particularly software or hardware interfaces.

- UX (User Experience): The overall experience a user has with a product or service, focusing on how easy and pleasing it is to use.

- Responsive Design: An approach to web design that makes web pages render well on a variety of devices and window or screen sizes.

- Accessibility: Ensuring websites and applications can be used by as many people as possible, including those with disabilities.

## Logistics and Fulfillment

- Inventory Management: The supervision of non-capitalized assets (inventory) and stock items.

- Dropshipping: A retail fulfillment method where a store doesn't keep the products it sells in stock. Instead, it purchases the item from a third party and ships it directly to the customer.

- SKU (Stock Keeping Unit): A unique identifier for each product and service that can be purchased.

## Analytics and Data

- Analytics: The discovery, interpretation, and communication of meaningful patterns in data. In eCommerce, it often refers to web analytics, which track and report website traffic.

- Big Data: Large sets of data that can be analyzed to reveal patterns, trends, and associations, particularly relating to human behavior and interactions.

- Customer Lifetime Value (CLTV or CLV): A prediction of the net profit attributed to the entire future relationship with a customer.

## Technical

- API (Application Programming Interface): A set of rules that allow different software entities to communicate with each other.

- SDK (Software Development Kit): A collection of software development tools in one installable package.

- Headless eCommerce: A type of eCommerce architecture where the front end (or the "head") is decoupled from the back end, allowing for more flexibility and customization.

- Microservices: An architectural style that structures an application as a collection of services that are highly maintainable and testable.

## Platforms and Tools

- SaaS (Software as a Service): A software distribution model in which a third-party provider hosts applications and makes them available to customers over the Internet.

- ERP (Enterprise Resource Planning): A type of software that organizations use to manage day-to-day business activities.

- CDN (Content Delivery Network): A system of distributed servers that deliver web content and pages to a user based on their geographic locations.

## Content & Design

- Visual page builder - Creates appealing shop pages with nothing but drag & drop. Zero code required.

- Themes - Design templates that customize your shop’s design to suit your taste.
	
- Rule builder	-  Rule builder determines which target groups view certain pieces of shop content for the purposes of precision targeting or discounts and offers. Create content independent of the day, time, cart contents or customer status.

- Quick view - Quick view gives users a seamless shopping experience. Let’s say a customer is browsing through the product list and discovers a product that appeals to them. Thanks to Quick view, they can look at it in more detail in a pop-up window to find out other information about the product and add it to their cart without switching to the product detail page. In turn, the customer stays on the overview page and can simply pick up their browsing where they left off.

- Storytelling - Use scroll navigation to guide your customers through the pages of your shop, paragraph by paragraph, and walk them through fascinating stories about your brand and product universe.

## Workflow and Automation

- Roles and permissions	- Manage all the users in your administration by setting up user accounts and giving them the right to view, edit, create, or delete content – so you set a user’s roles and permissions for each area with the ultimate precision.

- Publisher	- Work collaboratively with your team in the shopping experiences: Create drafts of your unfinished shop layouts and see in the activity feed who made what changes – so you always have your eye on the ball.

- Rule Builder - Use conditions to create individual rules, whether to calculate shipping costs, work out customer-specific product prices or determine promotional activities.

- Flow Builder - Simplify and automate even the most complex business processes without having to write a single line of code.

## Customer experience & Marketing

- Customer groups - You cna create a wide range of customer groups - VIP customers, B2B customers, or international customers and assign certain sales channels or tax regulations to them.

- Promotions - Offer discounts for your sales channels to increase your turnover. 

- SEO - Search engine optimization is important for generating organic reach and attracting new customers. And with rich snippets, breadcrumbs, meta tags and canonical tags, your shop is perfectly equipped to face the future.

- Search - 	The search feature is crucial so your customers can quickly track down the products in your shop they’re interested in. In Shopware, you can modify the search to suit your needs, configuring what areas of the shop the search should cover. For instance, setting a minimum length for the search term or determining search behavior.

- Cross-selling - Your customer is looking at lamps? Then they’ll also need lightbulbs! On the product details page, show your customers items that go with what they’re looking at and boost your sales.

- Product reviews - Your customers can leave reviews for every single product. This also helps other customers decide what to buy and gives you the chance to collect valuable customer feedback.

- Tag : Use tags to assign keywords to products, customers, media, orders and much more. In turn, you can quickly find and view all the content with tags. Plus, you can even create keyword-based rules with the Rule Builder.

- Social Shopping : To boost your brand awareness and your sales, use social media like Facebook, Instagram and Pinterest as additional sales channels and target your intended audience wherever they are.

- Advanced Search : Don’t just search - find. This high-performance search feature is based on Elasticsearch. Despite the huge quantities of data at play, your customers can enjoy lightning-fast search results and an improved user experience.

- Dynamic Access : 	Make content visible to certain customer groups only, whether VIP customers or major retail partners. Control who sees categories, products, specific variants or landing pages, for instance.

- Form Builder:  This form configurator lets you create individual forms for your shop and store them as temp lates. Simply drag & drop text fields onto the form and arrange them however you like.

- Digital Sales Rooms : Create interactive live video events for your customers straight from your Shopware website – without having to switch between a presentation tool, video conferencing system and store system.

## B2B capabilities

- Gross/net price display - Set which customer groups see which prices and which tax rates are applied – down to the finest details.

- Enhanced roles and permissions management - Make the most of enhanced roles and permissions management, customized to suit B2B functions and roles. Set rights for budgets, and conditions, for instance, and determine who is allowed to use the features of the B2B Suite – including in the storefront.

- Quote management	- Manage an effortless submission and approval of sales offers: Prepare and send proposals to your customers, accept or decline offers made to you.

- Budget and approval processes	- Set budgets for specific employees and determine which processes they are permitted to undertake.

- Quick ordering - Your customers can add orders to their shopping cart or order list in a flash: all they need is the product number and quantity, which they can enter either via a simple input mask or by importing a file.

- Order list - Large orders are a common occurrence in the B2B segment, with the same orders often placed time and again. Order lists help your customers better plan and easily manage their orders so they can save valuable time.

- Customer-specific pricing	- A frequent customer, start-up, or longstanding client with a loyalty discount? Set up bespoke prices for your various customers.

- Sales Agent - Say goodbye to the multitude of disjointed B2B systems that often lead to scattered and inefficient processes. Engineered to serve as a central platform, the Sales Agent by Shopware empowers your sales team to monitor, evaluate, and act on operations with unprecedented ease. This innovative tool streamlines the sales workflow, enhancing operational efficiency and representing a significant advancement in optimizing digital B2B strategies.

## Internationalization
		
- Multi-language - Supports multiple language and also customer’s native language.

- Currency - Products made available in different currencies as per country or sales channel. Manage all currencies and configure the display and other details according to the needs.

- Tax - Tax rates can vary by country, region, product, and customer group. With Shopware, you can manage and customize all tax rates easily.

Once you are have familiarised yourself with these terminologies, then lets learn more about Shopware features and benefits.
