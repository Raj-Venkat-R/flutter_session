import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool colortext = true;
  bool colortext1 = true;

  void getSwiggyData() async{
    await http.get(
      Uri.parse(
        "https://www.swiggy.com/dapi/restaurants/list/v5?lat=13.08950&lng=80.27390",
      ),
    );
  }

  List<Map<String, dynamic>> swiggydata = [
    {
      "id": "3872256",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/11/20/a8182911-6756-4ec1-8f7f-dc2098a567aa_HomelyPC.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/142465?collection_id=142465&type=rcv2",
        "text": "homely",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {"altText": "homely", "altTextCta": "open"},
      "entityId": "swiggy://collectionV2?collection_id=142465",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750591",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Biryani.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83639?collection_id=83639&search_context=biryani&tags=layout_CCS_Biryani&type=rcv2",
        "text": "Biryani",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for biryani",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83639&tags=layout_CCS_Biryani&search_context=biryani",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750248",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_shawarma.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80402?collection_id=80402&tags=layout_Shawarma_Contextual&type=rcv2",
        "text": "Shawarma",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for shawarma",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80402&tags=layout_Shawarma_Contextual",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750579",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Pizzas.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83631?collection_id=83631&search_context=pizza&tags=layout_CCS_Pizza&type=rcv2",
        "text": "Pizzas",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for pizza",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83631&tags=layout_CCS_Pizza&search_context=pizza",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750589",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_burger.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83637?collection_id=83637&search_context=burger&tags=layout_CCS_Burger&type=rcv2",
        "text": "Burgers",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for burger",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83637&tags=layout_CCS_Burger&search_context=burger",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750587",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2025/1/24/897bc750-6b57-4e7d-9365-87c1ab2c6d7e_Chinese2.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83636?collection_id=83636&tags=layout_CCS_Chinese&type=rcv2",
        "text": "Chinese",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for chinese",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83636&tags=layout_CCS_Chinese",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750581",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2025/1/24/05a939eb-fd4e-4308-b989-d1c54f4421b3_northindian1.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83633?collection_id=83633&search_context=northindian&tags=layout_CCS_NorthIndian&type=rcv2",
        "text": "North Indian",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for north indian",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83633&tags=layout_CCS_NorthIndian&search_context=northindian",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "749868",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_cake.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83655?collection_id=83655&tags=layout_CCS_Cake&type=rcv2",
        "text": "Cakes",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for cake",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83655&tags=layout_CCS_Cake",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750643",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Idli.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80440?collection_id=80440&tags=layout_CCS_Idli&type=rcv2",
        "text": "Idli",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for idly",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80440&tags=layout_CCS_Idli",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750204",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Parotta.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80477?collection_id=80477&tags=layout_BAU_Contextual%2Cparotta&type=rcv2",
        "text": "Parotta",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for parotta",
        "altTextCta": "open",
      },
      "entityId": "80477",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750131",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Dosa.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80424?collection_id=80424&tags=layout_CCS_Dosa&type=rcv2",
        "text": "Dosa",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for dosa",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80424&tags=layout_CCS_Dosa",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750222",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/17/58760e8e-324f-479e-88fa-31800120ea38_Rolls1.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83669?collection_id=83669&tags=layout_CCS_Rolls&type=rcv2",
        "text": "Rolls",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for roll",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83669&tags=layout_CCS_Rolls",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750206",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_pasta.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80479?collection_id=80479&search_context=pasta&tags=layout_CCS_Pasta&type=rcv2",
        "text": "Pasta",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for pasta",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80479&tags=layout_CCS_Pasta&search_context=pasta",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750571",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Pure Veg.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80435?collection_id=80435&tags=layout_CCS_PureVeg&type=rcv2",
        "text": "Pure Veg",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for veg",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80435&tags=layout_CCS_PureVeg",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "749772",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Noodles.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80463?collection_id=80463&tags=layout_BAU_Contextual%2Cnoodles&type=rcv2",
        "text": "Noodles",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for noodles",
        "altTextCta": "open",
      },
      "entityId": "80463",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750585",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Salad-1.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83634?collection_id=83634&search_context=southindian&tags=layout_CCS_SouthIndian&type=rcv2",
        "text": "South Indian",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for south indian",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83634&tags=layout_CCS_SouthIndian&search_context=southindian",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750637",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Orange juice.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80445?collection_id=80445&tags=layout_Juices_Contextual&type=rcv2",
        "text": "Juice",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for juice",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80445&tags=layout_Juices_Contextual",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "749768",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Momos.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80461?collection_id=80461&tags=layout_CCS_Momos&type=rcv2",
        "text": "Momos",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for momos",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80461&tags=layout_CCS_Momos",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750635",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Kebabs.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/80451?collection_id=80451&tags=layout_CCS_Kebabs&type=rcv2",
        "text": "Kebabs",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurant curated for kebabs",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=80451&tags=layout_CCS_Kebabs",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
    {
      "id": "750596",
      "imageId":
          "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_chocolate icecream.png",
      "action": {
        "link":
            "https://www.swiggy.com/collections/83640?collection_id=83640&tags=layout_CCS_IceCreams&type=rcv2",
        "text": "Ice Cream",
        "type": "WEBLINK",
      },
      "entityType": "BANNER",
      "accessibility": {
        "altText": "restaurants curated for icecream",
        "altTextCta": "open",
      },
      "entityId":
          "swiggy://collectionV2?collection_id=83640&tags=layout_CCS_IceCreams",
      "frequencyCapping": {},
      "externalMarketing": {},
    },
  ];

  List<Map<String, dynamic>> restaurantData = [
    {
      "info": {
        "id": "594211",
        "name": "KFC",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2024/12/9/acb50783-bf74-4970-97c1-2d3bc1574435_594211.JPG",
        "locality": "EVR Periyar Salai",
        "areaName": "Chennai Central",
        "costForTwo": "₹400 for two",
        "cuisines": ["Burgers", "Fast Food", "Rolls & Wraps"],
        "avgRating": 4,
        "parentId": "547",
        "avgRatingString": "4.0",
        "totalRatingsString": "2.3K+",
        "sla": {
          "deliveryTime": 25,
          "lastMileTravel": 1.1,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "1.1 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "bolt/big%20rx%20listing%2015%20mins%20.png",
              "description": "bolt!",
            },
            {
              "imageId": "Rxawards/_CATEGORY-Burger.png",
              "description": "Delivery!",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "bolt!",
                    "imageId": "bolt/big%20rx%20listing%2015%20mins%20.png",
                  },
                },
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-Burger.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "50% OFF",
          "subHeader": "UPTO ₹80",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/kfc-evr-periyar-salai-chennai-central-rest594211",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "806891",
        "name": "Pizza Hut",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/9/80d429d6-dc40-49c1-bdba-9f3603457d26_806891.JPG",
        "locality": "Anna Salai",
        "areaName": "Triplicane",
        "costForTwo": "₹350 for two",
        "cuisines": ["Pizzas"],
        "avgRating": 4.3,
        "parentId": "721",
        "avgRatingString": "4.3",
        "totalRatingsString": "2.3K+",
        "sla": {
          "deliveryTime": 33,
          "lastMileTravel": 3,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "3.0 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-30 01:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "Rxawards/_CATEGORY-Pizza.png",
              "description": "Delivery!",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-Pizza.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "50% OFF",
          "subHeader": "UPTO ₹100",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/pizza-hut-anna-salai-triplicane-rest806891",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "726146",
        "name": "Theobroma",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/23/92823851-cec6-42ba-bc77-ea92b0b8ca28_726146.JPG",
        "locality": "Purasawalkam High Road",
        "areaName": "Kellys",
        "costForTwo": "₹400 for two",
        "cuisines": ["Desserts"],
        "avgRating": 4.6,
        "parentId": "1040",
        "avgRatingString": "4.6",
        "totalRatingsString": "3.2K+",
        "sla": {
          "deliveryTime": 26,
          "lastMileTravel": 4.8,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "4.8 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:59:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "Rxawards/_CATEGORY-Desserts.png",
              "description": "Delivery!",
            },
            {"imageId": "newg.png", "description": "Gourmet"},
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-Desserts.png",
                  },
                },
                {
                  "attributes": {
                    "description": "Gourmet",
                    "imageId": "newg.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "15% OFF",
          "discountTag": "FLAT DEAL",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/theobroma-purasawalkam-high-road-kellys-rest726146",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "403037",
        "name": "NIC Ice Creams",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/7/8/54b553c5-c9a7-4d32-8fc2-6372e0905f05_403037.JPG",
        "locality": "BC Press Road",
        "areaName": "Royapuram",
        "costForTwo": "₹120 for two",
        "cuisines": ["Ice Cream", "Desserts"],
        "avgRating": 4.6,
        "veg": true,
        "parentId": "6249",
        "avgRatingString": "4.6",
        "totalRatingsString": "2.0K+",
        "sla": {
          "deliveryTime": 32,
          "lastMileTravel": 6.3,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "6.3 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:00:00",
          "opened": true,
        },
        "badges": {},
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹124"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/nic-ice-creams-bc-press-road-royapuram-rest403037",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "11479",
        "name": "Burger King",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/18/6c8fab90-715d-498d-ab76-ec08159dfc8f_11479.jpg",
        "locality": "Express Avenue",
        "areaName": "Thousand Lights",
        "costForTwo": "₹350 for two",
        "cuisines": ["Burgers", "American"],
        "avgRating": 4.3,
        "parentId": "166",
        "avgRatingString": "4.3",
        "totalRatingsString": "60K+",
        "sla": {
          "deliveryTime": 42,
          "lastMileTravel": 5,
          "serviceability": "SERVICEABLE",
          "slaString": "40-45 mins",
          "lastMileTravelString": "5.0 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "Rxawards/_CATEGORY-Burger.png",
              "description": "Delivery!",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-Burger.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹59"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/burger-king-express-avenue-thousand-lights-rest11479",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "37972",
        "name": "McDonald's",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/3/e818f61a-f94d-44d6-b522-0399ad8c3550_37972.jpg",
        "locality": "Anna Salai",
        "areaName": "Royapettah",
        "costForTwo": "₹400 for two",
        "cuisines": ["Burgers", "Beverages", "Cafe", "Desserts"],
        "avgRating": 4.3,
        "parentId": "630",
        "avgRatingString": "4.3",
        "totalRatingsString": "30K+",
        "sla": {
          "deliveryTime": 43,
          "lastMileTravel": 4.8,
          "serviceability": "SERVICEABLE",
          "slaString": "40-45 mins",
          "lastMileTravelString": "4.8 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 22:55:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "Rxawards/_CATEGORY-Burger.png",
              "description": "Delivery!",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-Burger.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹119"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "4.1", "ratingCount": "6.9K+"},
          "source": "GOOGLE",
          "sourceIconImageId": "v1704440323/google_ratings/rating_google_tag",
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/mcdonalds-anna-salai-royapettah-rest37972",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "16543",
        "name": "A2B - Adyar Ananda Bhavan",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/1/15/21228890-3c32-48cb-9ce1-4761f2128cfa_16543.jpg",
        "locality": "Purasavakkam",
        "areaName": "Purasaiwakkam",
        "costForTwo": "₹300 for two",
        "cuisines": ["South Indian", "Sweets", "Chinese"],
        "avgRating": 4.6,
        "veg": true,
        "parentId": "22",
        "avgRatingString": "4.6",
        "totalRatingsString": "44K+",
        "sla": {
          "deliveryTime": 28,
          "lastMileTravel": 2.9,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "2.9 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 22:30:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "Rxawards/_CATEGORY-South%20Indian.png",
              "description": "Delivery!",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-South%20Indian.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "20% OFF",
          "subHeader": "ABOVE ₹600",
          "discountTag": "FLAT DEAL",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "3.9", "ratingCount": "3.8K+"},
          "source": "GOOGLE",
          "sourceIconImageId": "v1704440323/google_ratings/rating_google_tag",
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/a2b-adyar-ananda-bhavan-purasavakkam-purasaiwakkam-rest16543",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "52548",
        "name": "Dindigul Thalappakatti - Since 1957\n",
        "cloudinaryImageId": "vwjg3qhczejysx26ioou",
        "locality": "Parrys",
        "areaName": "Parrys",
        "costForTwo": "₹400 for two",
        "cuisines": [
          "Biryani",
          "Barbecue",
          "South Indian",
          "Chinese",
          "North Indian",
        ],
        "avgRating": 4.2,
        "parentId": "332",
        "avgRatingString": "4.2",
        "totalRatingsString": "11K+",
        "sla": {
          "deliveryTime": 34,
          "lastMileTravel": 3.7,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "3.7 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-30 01:00:00",
          "opened": true,
        },
        "badges": {},
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹179"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "4.3", "ratingCount": "7.5K+"},
          "source": "GOOGLE",
          "sourceIconImageId": "v1704440323/google_ratings/rating_google_tag",
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/dindigul-thalappakatti-since-1957-parrys-rest52548",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "383374",
        "name": "Kwality Walls Ice Cream and More",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2024/6/20/12a593f5-8d11-4e98-b784-818e1b56a5d9_383374.JPG",
        "locality": "Venkatesa Bathan Street",
        "areaName": "Purasawalkam",
        "costForTwo": "₹300 for two",
        "cuisines": ["Desserts", "Ice Cream", "Ice Cream Cakes"],
        "avgRating": 4.7,
        "veg": true,
        "parentId": "582",
        "avgRatingString": "4.7",
        "totalRatingsString": "1.3K+",
        "sla": {
          "deliveryTime": 22,
          "lastMileTravel": 2.5,
          "serviceability": "SERVICEABLE",
          "slaString": "20-25 mins",
          "lastMileTravelString": "2.5 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:45:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "v1695133679/badges/Pure_Veg111.png",
              "description": "pureveg",
            },
          ],
        },
        "isOpen": true,
        "aggregatedDiscountInfoV2": {},
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "pureveg",
                    "imageId": "v1695133679/badges/Pure_Veg111.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/kwality-walls-ice-cream-and-more-venkatesa-bathan-street-purasawalkam-rest383374",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "403038",
        "name": "Grameen Kulfi",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/5/16/dfeaaf8b-8fc9-483f-8142-96f8c15e9e5f_403038.jpg",
        "locality": "Bc Press Road",
        "areaName": "Royapuram",
        "costForTwo": "₹120 for two",
        "cuisines": ["Ice Cream", "Desserts"],
        "avgRating": 4.8,
        "veg": true,
        "parentId": "12175",
        "avgRatingString": "4.8",
        "totalRatingsString": "350",
        "sla": {
          "deliveryTime": 32,
          "lastMileTravel": 6.3,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "6.3 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "v1695133679/badges/Pure_Veg111.png",
              "description": "pureveg",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "pureveg",
                    "imageId": "v1695133679/badges/Pure_Veg111.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹148"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/grameen-kulfi-bc-press-road-royapuram-rest403038",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "430194",
        "name": "SMOOR",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/21/f17b7f93-3da0-4e0c-906c-7fe291f7b8e1_430194.jpg",
        "locality": "Chennai Corp. Ward - 111",
        "areaName": "Royapettah",
        "costForTwo": "₹350 for two",
        "cuisines": ["Desserts", "Bakery"],
        "avgRating": 4.7,
        "parentId": "3506",
        "avgRatingString": "4.7",
        "totalRatingsString": "944",
        "sla": {
          "deliveryTime": 34,
          "lastMileTravel": 5.7,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "5.7 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 22:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {"imageId": "newg.png", "description": "Gourmet"},
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Gourmet",
                    "imageId": "newg.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "₹150 OFF",
          "subHeader": "ABOVE ₹649",
          "discountTag": "FLAT DEAL",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "4.1", "ratingCount": "142"},
          "source": "GOOGLE",
          "sourceIconImageId": "v1704440323/google_ratings/rating_google_tag",
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/smoor-corp-ward-111-royapettah-rest430194",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "609526",
        "name": "Madno - House of Sundaes",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/3/26/f5cde283-5335-46cd-bd5f-36343a1f5a61_609526.jpg",
        "locality": "Sivashanmugam Street",
        "areaName": "Nungambakkam",
        "costForTwo": "₹250 for two",
        "cuisines": ["Ice Cream", "Desserts", "Beverages"],
        "avgRating": 4.3,
        "veg": true,
        "parentId": "264082",
        "avgRatingString": "4.3",
        "totalRatingsString": "308",
        "sla": {
          "deliveryTime": 38,
          "lastMileTravel": 5.6,
          "serviceability": "SERVICEABLE",
          "slaString": "35-40 mins",
          "lastMileTravelString": "5.6 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-30 05:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "v1695133679/badges/Pure_Veg111.png",
              "description": "pureveg",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "pureveg",
                    "imageId": "v1695133679/badges/Pure_Veg111.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹69"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/madno-house-of-sundaes-sivashanmugam-street-nungambakkam-rest609526",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "37629",
        "name": "Shree Mithai",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2024/4/24/8dd1f626-41ab-46a6-bbcb-15068ea2cb1a_37629.jpg",
        "locality": "Chetpet",
        "areaName": "Nungambakkam",
        "costForTwo": "₹250 for two",
        "cuisines": ["Desserts", "Street Food", "Chaat"],
        "avgRating": 4.7,
        "veg": true,
        "parentId": "6988",
        "avgRatingString": "4.7",
        "totalRatingsString": "94K+",
        "sla": {
          "deliveryTime": 33,
          "lastMileTravel": 4.6,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "4.6 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 21:00:00",
          "opened": true,
        },
        "badges": {},
        "isOpen": true,
        "aggregatedDiscountInfoV2": {},
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "4.5", "ratingCount": "10K+"},
          "source": "GOOGLE",
          "sourceIconImageId": "v1704440323/google_ratings/rating_google_tag",
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/shree-mithai-chetpet-nungambakkam-rest37629",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "33457",
        "name": "Buhari",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/2/11/bf3eb918-ff7f-4b63-bde6-0cc4caee479b_33457.sss.jpg",
        "locality": "Purasawalkam - Buhari",
        "areaName": "Purasawalkam",
        "costForTwo": "₹600 for two",
        "cuisines": [
          "Biryani",
          "Chinese",
          "South Indian",
          "Arabian",
          "Barbecue",
          "Seafood",
          "Desserts",
          "Beverages",
        ],
        "avgRating": 4.3,
        "parentId": "164",
        "avgRatingString": "4.3",
        "totalRatingsString": "74K+",
        "sla": {
          "deliveryTime": 30,
          "lastMileTravel": 2.2,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "2.2 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:59:00",
          "opened": true,
        },
        "badges": {},
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "40% OFF",
          "subHeader": "UPTO ₹75",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/buhari-buhari-purasawalkam-rest33457",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "838747",
        "name": "Pastas By Pizza Hut",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2024/4/1/f399206a-20f0-4f84-8932-7da0334909ca_838747.JPG",
        "locality": "Anna Salai",
        "areaName": "Royapettah",
        "costForTwo": "₹400 for two",
        "cuisines": ["Pastas"],
        "avgRating": 4.3,
        "parentId": "306806",
        "avgRatingString": "4.3",
        "totalRatingsString": "121",
        "sla": {
          "deliveryTime": 31,
          "lastMileTravel": 3,
          "serviceability": "SERVICEABLE",
          "slaString": "30-35 mins",
          "lastMileTravelString": "3.0 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-30 01:00:00",
          "opened": true,
        },
        "badges": {
          "textExtendedBadges": [
            {
              "iconId": "guiltfree/GF_Logo_android_3x",
              "shortDescription": "options available",
              "fontColor": "#7E808C",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "",
                    "fontColor": "#7E808C",
                    "iconId": "guiltfree/GF_Logo_android_3x",
                    "shortDescription": "options available",
                  },
                },
              ],
            },
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "60% OFF",
          "subHeader": "UPTO ₹120",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/pastas-by-pizza-hut-anna-salai-royapettah-rest838747",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "14044",
        "name": "Fruit Shop on Greams Road",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2024/7/25/ff69726d-dd3e-4ff6-88d4-36b18536ce08_14044.jpg",
        "locality": "Opposite Commissioner Office",
        "areaName": "Egmore",
        "costForTwo": "₹150 for two",
        "cuisines": ["Juices", "Beverages", "Desserts"],
        "avgRating": 4.6,
        "veg": true,
        "parentId": "401",
        "avgRatingString": "4.6",
        "totalRatingsString": "4.2K+",
        "sla": {
          "deliveryTime": 27,
          "lastMileTravel": 2.7,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "2.7 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:00:00",
          "opened": true,
        },
        "badges": {
          "textExtendedBadges": [
            {
              "iconId": "guiltfree/GF_Logo_android_3x",
              "shortDescription": "options available",
              "fontColor": "#7E808C",
            },
          ],
        },
        "isOpen": true,
        "aggregatedDiscountInfoV2": {},
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "",
                    "fontColor": "#7E808C",
                    "iconId": "guiltfree/GF_Logo_android_3x",
                    "shortDescription": "options available",
                  },
                },
              ],
            },
          },
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/fruit-shop-on-greams-road-opposite-commissioner-office-egmore-rest14044",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "542182",
        "name": "Wow! Momo",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/30/d4f66c38-3e1e-4400-be51-7bbef114a18d_542182.jpg",
        "locality": "Poonamallee High Road",
        "areaName": "Vepary",
        "costForTwo": "₹300 for two",
        "cuisines": ["Momos", "Chinese", "fastfood", "Asian", "Beverages"],
        "avgRating": 4.3,
        "parentId": "1776",
        "avgRatingString": "4.3",
        "totalRatingsString": "1.3K+",
        "sla": {
          "deliveryTime": 27,
          "lastMileTravel": 2.8,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "2.8 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-30 00:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {
              "imageId": "Rxawards/_CATEGORY-Chinese.png",
              "description": "Delivery!",
            },
            {
              "imageId": "Ratnesh_Badges/Rx_Awards_2025/Momo.png",
              "description": "Delivery!",
            },
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Rxawards/_CATEGORY-Chinese.png",
                  },
                },
                {
                  "attributes": {
                    "description": "Delivery!",
                    "imageId": "Ratnesh_Badges/Rx_Awards_2025/Momo.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹99"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/wow-momo-poonamallee-high-road-vepary-rest542182",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "95158",
        "name": "Sweet Truth - Cake and Desserts",
        "cloudinaryImageId":
            "RX_THUMBNAIL/IMAGES/VENDOR/2025/6/19/9d9b7672-a241-4bbb-bfae-31a6a960478d_95158.jpg",
        "locality": "Bharathi Salai",
        "areaName": "Triplicane",
        "costForTwo": "₹450 for two",
        "cuisines": ["Desserts", "Ice Cream", "Bakery", "Beverages"],
        "avgRating": 4.4,
        "parentId": "4444",
        "avgRatingString": "4.4",
        "totalRatingsString": "1.3K+",
        "sla": {
          "deliveryTime": 29,
          "lastMileTravel": 5,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "5.0 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 23:59:00",
          "opened": true,
        },
        "badges": {},
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {"header": "ITEMS", "subHeader": "AT ₹59"},
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/sweet-truth-cake-and-desserts-bharathi-salai-triplicane-rest95158",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "14096",
        "name": "Sangeetha Veg Restaurant",
        "cloudinaryImageId": "oodghmivnc6bxnbrvzzw",
        "locality": "Egmore",
        "areaName": "Gandhi Irwin",
        "costForTwo": "₹150 for two",
        "cuisines": ["Chinese", "South Indian"],
        "avgRating": 4.6,
        "veg": true,
        "parentId": "1260",
        "avgRatingString": "4.6",
        "totalRatingsString": "61K+",
        "sla": {
          "deliveryTime": 28,
          "lastMileTravel": 2.5,
          "serviceability": "SERVICEABLE",
          "slaString": "25-30 mins",
          "lastMileTravelString": "2.5 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-29 22:45:00",
          "opened": true,
        },
        "badges": {},
        "isOpen": true,
        "aggregatedDiscountInfoV2": {},
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {},
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "3.7", "ratingCount": "1.7K+"},
          "source": "GOOGLE",
          "sourceIconImageId": "v1704440323/google_ratings/rating_google_tag",
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/sangeetha-veg-restaurant-egmore-gandhi-irwin-rest14096",
        "type": "WEBLINK",
      },
    },
    {
      "info": {
        "id": "793801",
        "name": "Minus 30",
        "cloudinaryImageId": "84dfb731ca567d0cd955a5f33ffeba3a",
        "locality": "Chennai Corporation Ward - 58",
        "areaName": "Mahaveer Colony EvK sampath",
        "costForTwo": "₹280 for two",
        "cuisines": ["Ice Cream", "Desserts", "Beverages", "Fast Food"],
        "avgRating": 4.7,
        "veg": true,
        "parentId": "292823",
        "avgRatingString": "4.7",
        "totalRatingsString": "171",
        "sla": {
          "deliveryTime": 17,
          "lastMileTravel": 1.9,
          "serviceability": "SERVICEABLE",
          "slaString": "15-20 mins",
          "lastMileTravelString": "1.9 km",
          "iconType": "ICON_TYPE_EMPTY",
        },
        "availability": {
          "nextCloseTime": "2025-07-30 02:00:00",
          "opened": true,
        },
        "badges": {
          "imageBadges": [
            {"imageId": "newg.png", "description": "Gourmet"},
          ],
        },
        "isOpen": true,
        "type": "F",
        "badgesV2": {
          "entityBadges": {
            "imageBased": {
              "badgeObject": [
                {
                  "attributes": {
                    "description": "Gourmet",
                    "imageId": "newg.png",
                  },
                },
              ],
            },
            "textBased": {},
            "textExtendedBadges": {},
          },
        },
        "aggregatedDiscountInfoV3": {
          "header": "₹125 OFF",
          "subHeader": "ABOVE ₹249",
          "discountTag": "FLAT DEAL",
        },
        "differentiatedUi": {
          "displayType": "ADS_UI_DISPLAY_TYPE_ENUM_DEFAULT",
          "differentiatedUiMediaDetails": {"lottie": {}, "video": {}},
        },
        "reviewsSummary": {},
        "displayType": "RESTAURANT_DISPLAY_TYPE_DEFAULT",
        "restaurantOfferPresentationInfo": {},
        "externalRatings": {
          "aggregatedRating": {"rating": "--"},
        },
        "ratingsDisplayPreference": "RATINGS_DISPLAY_PREFERENCE_SHOW_SWIGGY",
      },
      "analytics": {"context": "seo-data-47410c4f-cc52-45dd-ae53-1799621f0403"},
      "cta": {
        "link":
            "https://www.swiggy.com/city/chennai/minus-30-corporation-ward-58-mahaveer-colony-evk-sampath-rest793801",
        "type": "WEBLINK",
      },
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSwiggyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 800,
              child: Carousel(
                dotIncreasedColor: Colors.tealAccent,
                dotBgColor: Colors.transparent,
                dotColor: Colors.teal,
                dotSize: 4,
                images: [
                  NetworkImage(
                    "https://imgs.search.brave.com/paAQPHx973nVB0RpfIClVCVXGa9Xb0Tp6DYEDqFN_ZE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYXN0/YS1ibGFjay1jbG92/ZXItNGstbGllYmUt/Z3JpbW9pcmUtZGVt/b24teHYwODg0ZWtv/OXh5Y2Ntcy5qcGc",
                  ),
                  NetworkImage(
                    "https://imgs.search.brave.com/250s2d_vD065pIP9V2tEQ5URlI_1gLPeJFmdBNYCY8s/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYXN0/YS1ibGFjay1jbG92/ZXItNGstZGFyay1h/bmltZS1xdW90ZS1w/b3N0ZXItZ2xyajVo/YTZ5cGQybTliYS5q/cGc",
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: swiggydata.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.network(
                            "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/${swiggydata[index]['imageId']}",
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("${swiggydata[index]['action']['text']}"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: restaurantData.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/${restaurantData[index]['info']['cloudinaryImageId']}",
                            height: 150,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "${restaurantData[index]['info']['name']}",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://imgs.search.brave.com/3GkOFET-dE1IhSM74C1cTz1OhROG6S3LxS0aGo8Wkuc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQ2MDEz/OTguanBn",
              ),
              radius: 80,
            ),

            Text(
              "Raj Venkat R",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),

            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Divider(thickness: 3, color: Colors.white),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    colortext = !colortext;
                  });
                },
                child: Container(
                  color: colortext ? Colors.white : Colors.black,
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.email, size: 20, color: Colors.teal),
                      SizedBox(width: 20),
                      Text(
                        "rajvenkat.r361@gmail.com",
                        style: TextStyle(
                          color: colortext ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    colortext1 = !colortext1;
                  });
                },
                child: Container(
                  color: colortext1 ? Colors.white : Colors.black,
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.phone, size: 20, color: Colors.teal),
                      SizedBox(width: 20),
                      Text(
                        "+91 9360002867",
                        style: TextStyle(
                          color: colortext1 ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
