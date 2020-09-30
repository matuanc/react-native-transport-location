/**
 * Metro configuration for React Native
 * https://github.com/facebook/react-native
 *
 */

const path = require('path')

module.exports = {
  // workaround for an issue with symlinks encountered starting with
  // metro@0.55 / React Native 0.61
  // (not needed with React Native 0.60 / metro@0.54)
  resolver: {
    extraNodeModules: new Proxy(
      {},
      { get: (_, name) => path.resolve('.', 'node_modules', name) }
    )
  },

  // quick workaround for another issue with symlinks
  watchFolders: ['.', '..']
}
/**
 * 下面为原来代码
 */
// module.exports = {
//   transformer: {
//     getTransformOptions: async () => ({
//       transform: {
//         experimentalImportSupport: false,
//         inlineRequires: false,
//       },
//     }),
//   },
// };
