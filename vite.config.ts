import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  /* 
  For base, see: https://vitejs.dev/config/#base and 
  https://vitejs.dev/guide/static-deploy.html#github-pages
  */
  base: '/testataas-vue-deployaus/',
  plugins: [vue()],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  }
})
