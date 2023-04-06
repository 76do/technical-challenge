import { AppProvider, Frame, Navigation } from '@shopify/polaris'
import '@shopify/polaris/build/esm/styles.css'
import enTranslations from '@shopify/polaris/locales/en.json'
import {
  ProductIndexPage,
  ProductNewPage,
  ProductShowPage,
} from './features/products'
import { HomeIndexPage } from './features/home'

function App() {
  const location = window.location.pathname

  const pageMarkup = (() => {
    switch (true) {
      case /^\/$/.test(location):
        return <HomeIndexPage />
      case /^\/products$/.test(location):
        return <ProductIndexPage />
      case /^\/products\/new$/.test(location):
        return <ProductNewPage />
      case /^\/products\/.*$/.test(location):
        return <ProductShowPage />
      default:
        return null
    }
  })()

  const navigationMarkup = (
    <Navigation location={location}>
      <Navigation.Section
        items={[
          { label: 'Home', url: '/', exactMatch: true },
          { label: 'Products', url: '/products' },
        ]}
      />
    </Navigation>
  )

  return (
    <AppProvider i18n={enTranslations}>
      <Frame navigation={navigationMarkup}>{pageMarkup}</Frame>
    </AppProvider>
  )
}

export default App
