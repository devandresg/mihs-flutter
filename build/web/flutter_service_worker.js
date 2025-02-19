'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "08b51e114b006dd1c2623de99b7fb684",
"version.json": "b2c49c0d3d3163ac19c548e25f207845",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"index.html": "55e1894d8d43cf7e829d2cf6c9daa921",
"/": "55e1894d8d43cf7e829d2cf6c9daa921",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"assets/NOTICES": "9f6ab3ccb38716545120bd1431d1e2f5",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/test/manifest.webmanifest": "49662a418297f006b556a95002a796dd",
"assets/test/Build/test.data.br": "b9f0d86f746b5e61f6f3521547d90743",
"assets/test/Build/test.data": "d3a0786c7a366b5ffa945051be9e9d9c",
"assets/test/Build/test.framework.js": "4f4c33082922127ad81a5cec072a0900",
"assets/test/Build/test.framework.js.br": "6dc228d986bebd7fd2e28fead9955004",
"assets/test/Build/test.loader.js": "ced816bef90f7ce50014d580269b25e9",
"assets/test/Build/test.wasm.br": "55f4ad95f5ddbe49ff77676bad9fab51",
"assets/test/Build/test.wasm": "15107716aadfc3fab3586f20c3731971",
"assets/test/index.html": "b907a90fed607016bae4b0e813c5205f",
"assets/test/ServiceWorker.js": "b2ba031b4da5fe4fcef76093d1db9674",
"assets/test/TemplateData/favicon.ico": "f04ae07ad1b634a4152d2c8175134c56",
"assets/test/TemplateData/progress-bar-full-dark.png": "99949a10dbeffcdf39821336aa11b3e0",
"assets/test/TemplateData/icons/unity-logo-dark.png": "ab6dcc33544062cd41646566feb746e8",
"assets/test/TemplateData/icons/unity-logo-light.png": "7e5daef9de90990c31d4d5e0ddf969ce",
"assets/test/TemplateData/unity-logo-dark.png": "5f00fa907e7c80061485fc64b62ca192",
"assets/test/TemplateData/style.css": "6490dd6a2810442b5c4779f9f5237ef8",
"assets/test/TemplateData/progress-bar-full-light.png": "9524d4bf7c6e05b2aa33d1a330491b24",
"assets/test/TemplateData/progress-bar-empty-dark.png": "781ae0583f8c2398925ecedfa04b62df",
"assets/test/TemplateData/unity-logo-light.png": "daf8545f18a102b4fa8f693681c2ffe0",
"assets/test/TemplateData/progress-bar-empty-light.png": "4412cb4b67a2ae33b3e99cccf8da54c9",
"assets/FontManifest.json": "bcee842ac7bc341679348140a4e1e8db",
"assets/unity_webgl/Build/WebGlBuild.wasm": "ca9a43531b6c124585de2ad527eb9798",
"assets/unity_webgl/Build/WebGlBuild.loader.js": "4b1bdf6e9f67f07b834d334b9aaeaaaa",
"assets/unity_webgl/Build/WebGlBuild.data.br": "1af368f9c05134ad7746ed6e8f07ff06",
"assets/unity_webgl/Build/WebGlBuild.wasm.br": "3ae07c644c3ccc12efbe1f39cc30f73a",
"assets/unity_webgl/Build/WebGlBuild.framework.js": "ea61812f2b200215a4c2c4033c329ec7",
"assets/unity_webgl/Build/WebGlBuild.framework.js.br": "d6bf4aff638ab46318cba46d46ac5b63",
"assets/unity_webgl/Build/WebGlBuild.data": "931467b3d72754a7212fffc98583c6d6",
"assets/unity_webgl/index.html": "2e05fb021bcf98c980c61cf9da5b92dd",
"assets/unity_webgl/TemplateData/favicon.ico": "f04ae07ad1b634a4152d2c8175134c56",
"assets/unity_webgl/TemplateData/progress-bar-full-dark.png": "99949a10dbeffcdf39821336aa11b3e0",
"assets/unity_webgl/TemplateData/unity-logo-title-footer.png": "1ecf1ff2683fbcd4e4525adb1d2cd7a8",
"assets/unity_webgl/TemplateData/webmemd-icon.png": "e409a6f1c955c2babb36cd2153d418b5",
"assets/unity_webgl/TemplateData/unity-logo-dark.png": "5f00fa907e7c80061485fc64b62ca192",
"assets/unity_webgl/TemplateData/style.css": "49ad8b801c91678f6144a9265c146704",
"assets/unity_webgl/TemplateData/MemoryProfiler.png": "90178b1c01bd4c66a21b9f2866091783",
"assets/unity_webgl/TemplateData/progress-bar-full-light.png": "9524d4bf7c6e05b2aa33d1a330491b24",
"assets/unity_webgl/TemplateData/progress-bar-empty-dark.png": "781ae0583f8c2398925ecedfa04b62df",
"assets/unity_webgl/TemplateData/unity-logo-light.png": "daf8545f18a102b4fa8f693681c2ffe0",
"assets/unity_webgl/TemplateData/progress-bar-empty-light.png": "4412cb4b67a2ae33b3e99cccf8da54c9",
"assets/unity_webgl/TemplateData/fullscreen-button.png": "489a5a9723567d8368c9810cde3dc098",
"assets/AssetManifest.bin.json": "393b5b9b7391ae20c96be91f52866238",
"assets/AssetManifest.bin": "655fffceac7d511f1efa6397e1daca1b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b93248a553f9e8bc17f1065929d5934b",
"assets/assets/fonts/Inter-Regular.ttf": "ea5879884a95551632e9eb1bba5b2128",
"assets/assets/fonts/centurygothic.ttf": "cfce6abbbff0099b15691345d8b94dcc",
"assets/assets/fonts/Inter-ExtraLight.ttf": "7a177fa21fece72dfaa5639d8f1c114a",
"assets/assets/fonts/Inter-Black.ttf": "118c5868c7cc1370fcf5a1fc2f569883",
"assets/assets/fonts/Parsley-Script-Regular.ttf": "251cbd01824cd6bc7f964f217b3fe1f6",
"assets/assets/fonts/Motel-King-Medium.ttf": "23c99a28e19be7adbcfe119f738d71b1",
"assets/assets/fonts/century-gothic-bold.ttf": "bc420c1c2b98e2ee8b2a75c1ce1fe083",
"assets/assets/fonts/Inter-ExtraBold.ttf": "72ac147c98056996b2a31e95a56d6e66",
"assets/assets/fonts/Damion-Regular.ttf": "4a8139bb305febcbd411b26404dc7056",
"assets/assets/fonts/Inter-Light.ttf": "a3fe4e0f9fdf3119c62a34b1937640dd",
"assets/assets/fonts/Inter-Thin.ttf": "4558ff85abeab91af24c86aab81509a7",
"assets/assets/fonts/Inter-SemiBold.ttf": "465266b2b986e33ef7e395f4df87b300",
"assets/assets/fonts/Inter-Bold.ttf": "ba74cc325d5f67d0efbeda51616352db",
"assets/assets/fonts/Inter-Medium.ttf": "cad1054327a25f42f2447d1829596bfe",
"assets/assets/fonts/Inter-VariableFont_slnt,wght.ttf": "32204736a4290ec41200abe91e5190d1",
"assets/assets/img/model.jpeg": "c11e3b1a0e734228f7dc020f87ca4911",
"assets/assets/img/the_constellation.png": "b22661566166734052f4b9fb57e93292",
"assets/assets/img/Model_Home_Marco_Island_Book.jpg": "5c1a725aaa13a7fd53d2e36374a9649a",
"assets/assets/img/the_tartan.png": "ceeb70842d03b5e3679a8689586d6675",
"assets/assets/img/plane.png": "0be80f96f6eaba48e423ac84919cd098",
"assets/assets/img/the_voyager.png": "d061fb8b33ccd8e31074eacaf1ee76c9",
"assets/AssetManifest.json": "f344af59d82488fddb7f0066ce8ab9a9",
"manifest.json": "57b36d2f7cf65670a4b96c43330c401f",
"main.dart.js": "c7832d13df3cf432625f834b20223a10",
"vercel.json": "61bd31a2b0ac08f10f13c932b32d6ca1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
