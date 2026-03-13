let productlist = ["product_id_1","product_id_2","product_id_3"];
const customer_A = {
    customer_id : 1,
    name : "naruto",
    email : "thaweeratch@gmail.com",
    phone : "093-446-2926",
    shipping_address : "123/456 ถนน ราชพฤษก จังหวัด นนทบุรี"

}
const customer_B = {
    customer_id : 2,
    name : "Sakura",
    email : "sakura@gmail.com",
    phone : "091-666-5555",
    shipping_address : "123/456 ถนน แจ้งวัฒนะ จังหวัด นนทบุรี"
}
const channel_web = {
    channel_id : 1,
    name : "web",
    api_endpoint : "",
    platform : "web"
}
const channel_shopee = {
    channel_id : 2,
    name : "shopee",
    api_endpoint : "",
    platform : "shopee"
}
const channel_lazada = {
    channel_id : 3,
    name : "lazada",
    api_endpoint : "",
    platform : "lazada"
}


const product_A = {
    product_id : "1",
    name : "Anker Powerbank",
    capacity_mah : 5000,
    wattage : 20,
    price: 500,
    stock_quantity : 30,
    lifestyle_tag : "travel",
    channel_id : "1"
}


const product_B = {
    product_id : "1",
    name : "Belkin Powerbank",
    capacity_mah : 10000,
    wattage : 30,
    price: 1000,
    stock_quantity : 20,
    lifestyle_tag : "digital nomads",
    channel_id : "2"
}

const order = {
    order_id : "000000001",
    customer_id : "1",
    order_item_date : "10/03/2026",
    total_amount : "500",
    staus : "shipped"
}

const order_item = {
    order_item_id : "1",
    order_id : "000000001",
    product_id : "1",
    quantity : 1,
    unit_price : "500"
}

register()
login()
browseProduct()
addToCart()
CheckOut()


manageProduct()
syncInventory()
serchOrder()
confirmOrderStatus()

