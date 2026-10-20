# Fashion Store

A calm, simple Shopify theme for clothing and accessories shops, in a soft editorial style: four ready-made colour schemes, Playfair Display headings and Work Sans text, generous spacing, and it works well on phones.

**Built-in placeholder photos are included** for the banner, category tiles, sample products, "Our story" and journal cards, so the theme looks complete straight after installing. Every one is replaced as soon as you choose your own image.

**New here? Read [INSTALL.md](INSTALL.md)** for a beginner's guide to uploading the theme and what to customize first, including the important step of picking a collection in Featured pieces before launching.

## What's included

- **Home page:** a wide banner with a "New arrivals" heading and "Shop now" button, "Shop by category" tiles, featured products, an "our story" section and the latest journal posts.
- **Product page:** a main photo with thumbnails, star rating, price with "Prices include VAT", colour swatches, size buttons, a size guide that finds the shopper's size from their measurements, shipping notes, reviews, "You may also like" and a sticky "Add to cart" bar.
- **Collection pages:** a row of filters (such as Size, Colour and Price), a sort menu and a product grid.
- **Cart:** items, subtotal, shipping and total lines, a "Checkout" button and "You may also like".
- **Other pages:** a journal (blog), contact form, content pages, "page not found" and an "Opening soon" password page.

The star ratings, reviews, shipping notes and "You may also like" products are **sample content**. You can change them in the theme editor.

---

## Step-by-step guide for beginners

You need a Shopify store to use this theme. A free trial store works.

### 1. Download the code from GitHub

1. Sign in to GitHub and open this repository. It's private, so only people you've invited can see it.
2. Click the green **Code** button, then **Download ZIP**.
3. Find the downloaded file (usually in your **Downloads** folder) and unzip it:
   - **Windows:** right-click the file, then choose **Extract All**.
   - **Mac:** double-click the file.

You now have a folder named something like `fashion-store-main`.

### 2. Make a zip file Shopify can read

Shopify needs the theme folders at the **top level** of the zip. If you zip the whole `fashion-store-main` folder, Shopify can't find them and the upload fails.

1. Open the `fashion-store-main` folder.
2. Select the **files and folders inside it**, not the folder itself. Shopify needs these eight folders:
   `assets`, `blocks`, `config`, `layout`, `locales`, `sections`, `snippets`, `templates`.
   You can include the other files, such as `README.md` and `LICENSE`, or leave them out.
3. **Leave out the `.git` folder** if you see one. It's usually hidden, so you won't see it unless you've turned on hidden files. It only appears if you copied the folder with Git rather than using **Download ZIP**.
4. Make the zip:
   - **Windows:** right-click one of the selected items, then choose **Send to → Compressed (zipped) folder**.
   - **Mac:** right-click one of the selected items, then choose **Compress**.
5. Give the zip a name you'll recognise, such as `fashion-store-theme.zip`.

**Check:** open the zip. You should see `assets`, `config`, `layout` and the other folders straight away, not a single folder containing them.

### 3. Upload the theme to Shopify

1. In Shopify admin, go to **Online Store → Themes**.
2. Click **Add theme**, then **Upload zip file**.
3. Choose your zip file and click **Upload**.

The theme appears in your **Theme library**. Uploading doesn't change your live store.

### 4. Preview the theme without publishing

Your shoppers keep seeing your current theme until you publish this one.

- **Preview:** in the Theme library, click the **…** button next to the theme, then **Preview**. This opens your store with the new theme, just for you.
- **Edit safely:** click **Customize** to open the theme editor. You can change anything and save it without publishing.
- **Share a preview:** in the theme editor, click the **…** menu at the top, then **Share preview**, to send a link to someone else.
- **Go live:** when you're happy, click the **…** button in the Theme library, then **Publish**.

### 5. Change colours and text in the theme editor

Open the theme editor: **Online Store → Themes → Customize**.

**Colours for the whole store**

1. Click the **Theme settings** icon (the paintbrush) in the left-hand bar.
2. Open **Colors** and pick one of the four schemes: **Cream** (default), **Sage**, **Ivory** or **Charcoal**. The whole store updates at once. Click a scheme to fine-tune its five colours.

**Colours for one section**

Sections don't have their own colour pickers. Instead, each has a **Background** choice, page colour or alternate colour, so the page gets a gentle rhythm while everything stays on the scheme.

The default Cream scheme:

| Colour | Used for |
|---|---|
| `#F7F3EE` warm cream | Page background |
| `#2B2724` soft charcoal | Headings, text and buttons |
| `#EDE6DD` sand | Alternate section background |
| `#A89A8A` taupe | Borders and dividers |
| `#B5785A` clay | Small accents only |

**Text**

1. Click any heading, button or paragraph on the page, or pick its section from the list on the left.
2. Type your new text in the panel that opens.
3. Click **Save** in the top right.

Things to change first:
- **Header:** your store name. It starts as "Your store name".
- **Footer:** your address, opening hours and contact email.
- **Home page:** the banner image, heading and button, and the "our story" text.
- **Product page:** the sample star rating, the shipping notes and the size chart measurements. Open the **Size chart** blocks to replace the example measurements with your own.

To change wording that isn't in a section, such as "Add to cart", go to **Online Store → Themes → … → Edit default theme content**.

### 6. Add product photos in Shopify admin

Product photos are stored with your products, not in the theme.

1. In Shopify admin, go to **Products** and click a product.
2. In the **Media** box, click **Add**, or drag photos from your computer into the box.
3. Drag the photos to put them in order. The **first photo** is the main photo on the product page and in product grids.
4. Click **Save**.

To show a photo when a shopper picks a colour or size, open the product's **Variants**, click a variant, and choose its image.

**Other images:**
- **Collections:** **Products → Collections**, then pick a collection and add an image.
- **Home page banner and other theme images:** in the theme editor, click the section, then **Select image**.

**Tips for photos:**
- Use **portrait** photos (4:5, for example 1600 × 2000 pixels) for products.
- JPG or WebP files work best. Keep each one under about 500 KB so pages load quickly.
- Make sure photos show the real colour, cut and fit of each item.
- If you make images with AI tools, check that the tool allows commercial use.

### 7. Before you open your store

- [ ] Store name, address and contact email added
- [ ] Sample reviews, ratings and shipping notes replaced with real ones, or hidden
- [ ] Size chart measurements replaced with your own
- [ ] A collection picked in **Featured pieces**, so the four sample products stop showing
- [ ] Built-in placeholder photos replaced with your own
- [ ] Filters set up in Shopify's free **Search & Discovery** app (for Size, Colour and Price)
- [ ] A test order placed, from product page to checkout

---

## For developers

- Preview while you edit: `shopify theme dev --store your-store.myshopify.com`
- Check the code: `shopify theme check`
- Upload without publishing: `shopify theme push --unpublished --store your-store.myshopify.com`
- Styles and scripts live with each section and snippet, in `{% stylesheet %}` and `{% javascript %}` tags. Styles needed on every page are in `assets/critical.css`.
- All shopper-facing text is in `locales/en.default.json`, and theme editor labels are in `locales/en.default.schema.json`.

## Credits and licence

- This theme is built on the **Shopify Skeleton Theme** by Shopify Inc. Shopify's original notice is kept unchanged in `LICENSE`. That notice allows the code to be used to build themes that work with Shopify.
- New code for the Fashion Store theme is © 2026 Fashion Store Theme contributors, released under the **MIT License**. See `LICENSE`.
- The **Work Sans** and **Playfair Display** fonts are under the **SIL Open Font License 1.1**. The full texts are in the `licenses` folder.
- The built-in placeholder photos were generated by the theme author with an AI image tool. They are meant to be replaced with your own photos. No stock photos or other third-party images are included.
