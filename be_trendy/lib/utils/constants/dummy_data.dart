import '../../features/shop/models/banner_model.dart';
import '../../features/shop/models/brand_model.dart';
import '../../features/shop/models/category_model.dart';
import '../../features/shop/models/product_attributes_model.dart';
import '../../features/shop/models/product_model.dart';
import '../../features/shop/models/product_variation_model.dart';
import '../../routes/routes.dart';
import 'image_strings.dart';

class BTDummyData {

  static final List<CategoryModel> categories = [

    CategoryModel(id: '1', image: BTImages.sportIcon, name: 'Sports', isFeatured: true),

    //CategoryModel(id: '5', image: BTImages.furnitureIcon, name: 'Furniture', isFeatured: true),
    //CategoryModel(id: '2', image: BTImages.electronicsIcon, name: 'Electronics', isFeatured: true),
    CategoryModel(id: '3', image: BTImages.clothIcon, name: 'Clothes', isFeatured: true),
    //CategoryModel(id: '4', image: BTImages.animalIcon, name: 'Animals', isFeatured: true),
    CategoryModel(id: '6', image: BTImages.shoeIcon, name: 'Shoes', isFeatured: true),
    CategoryModel(id: '7', image: BTImages.cosmeticsIcon, name: 'Cosmetics', isFeatured: true),
    CategoryModel(id: '14', image: BTImages.jeweleryIcon, name: 'Jewelery', isFeatured: true),
   ///sub-categories
    CategoryModel(id: '8', image: BTImages.sportIcon, name: 'Sport Shoes', parentId: '1', isFeatured: false),
    CategoryModel(id: '9', image: BTImages.sportIcon, name: 'Track suits', parentId: '1', isFeatured: false),
    CategoryModel(id: '10', image: BTImages.sportIcon, name: 'Sports Equipments', parentId: '1', isFeatured: false),


];

  // Banners
static final List<BannerModel> banners = [
  BannerModel(imageUrl: BTImages.promoBanner1, targetScreen: BTRoutes.order, active: false),
  BannerModel(imageUrl: BTImages.promoBanner2, targetScreen: BTRoutes.cart, active: true),
  BannerModel(imageUrl: BTImages.promoBanner3, targetScreen: BTRoutes.search, active: true),
];



  //List of all Products
  static final List<ProductModel> products = [
    ProductModel(
        id: '001',
        title: 'Green Nike sports shoe',
        stock: 15,
        price: 135,
        isFeatured: true,
        thumbnail: BTImages.productImage1,
        description: 'Green Nike sports shoe',
        brand: BrandModel(
            id: '1',
            image: BTImages.zara_logo,
            name: 'Zara',
            productsCount: 265,
            isFeatured: true),
        images: [
          BTImages.productImage1,
          BTImages.productImage23,
          BTImages.productImage21,
          BTImages.productImage9
        ],
        salePrice: 38,
        sku: 'ABR4568',
        categoryId: '1',
        productAttributes: [
          ProductAttributeModel(
              name: 'Color', values: ['Green', 'Black', 'Red']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          ProductVariationModel(
              id: '1',
              stock: 34,
              price: 134,
              salePrice: 122.6,
              image: BTImages.productImage1,
              description:
                  'This is a Product description for Green Nike sports shoe.',
              attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
          // Product VariationModel
          ProductVariationModel(
            id: '2',
            stock: 15,
            price: 132,
            image: BTImages.productImage23,
            attributeValues: {'Color': 'Black', 'Size': 'EU 32'},
          ),
          // Product VariationModel
          ProductVariationModel(
            id: '3',
            stock: 0,
            price: 234,
            image: BTImages.productImage23,
            attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
          ),
          // Product VariationModel
        ],
        productType: 'ProductType.variable'),

    ProductModel(
        id: '002',
        title: '',
        stock: 2,
        price: 150,
        isFeatured: true,
        thumbnail: BTImages.productImage33,
        description: 'Wedtrend Women\'s 1950s Vintage Plaids Audrey Dress Sleeveless Spaghetti A-Line Short Cocktail Swing Dress',
        brand: BrandModel(
            id: '1',
            image: BTImages.zara_logo,
            name: 'Zara',
            productsCount: 265,
            isFeatured: true),
        images: [
          BTImages.productImage33,
          BTImages.productImage332,
          BTImages.productImage33blue,
          BTImages.productImage33red
        ],
        salePrice: 38,
        sku: 'ABR4568',
        categoryId: '1',
        productAttributes: [
          ProductAttributeModel(
              name: 'Color', values: ['Green', 'Black', 'Red']),
          ProductAttributeModel(
              name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
        ],
        productVariations: [
          ProductVariationModel(
              id: '1',
              stock: 34,
              price: 134,
              salePrice: 122.6,
              image: BTImages.productImage1,
              description:
              'This is a Product description for a dress.',
              attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
          // Product VariationModel
          ProductVariationModel(
            id: '2',
            stock: 15,
            price: 132,
            image: BTImages.productImage23,
            attributeValues: {'Color': 'Black', 'Size': 'EU 32'},
          ),
          // Product VariationModel
          ProductVariationModel(
            id: '3',
            stock: 0,
            price: 234,
            image: BTImages.productImage23,
            attributeValues: {'Color': 'Black', 'Size': 'EU 34'},
          ),
          // Product VariationModel
        ],
        productType: 'ProductType.variable'),
  ];
}
