import {
  Card,
  IndexTable,
  IndexTableProps,
  Layout,
  Link,
  Page,
  PageProps,
} from '@shopify/polaris'
import { FC } from 'react'

const items = ['test1', 'test2']

const headings: IndexTableProps['headings'] = [{ title: 'title' }]

export const IndexPage: FC = () => {
  const rowMarkup = items.map((val, index) => (
    <IndexTable.Row id={`${val}-${index}`} position={index} key={`${index}`}>
      <IndexTable.Cell>
        <Link
          url={`/products/${index}`}
          dataPrimaryLink
          removeUnderline
          monochrome
        >
          {val}
        </Link>
      </IndexTable.Cell>
    </IndexTable.Row>
  ))
  const pagePrimaryAction: PageProps['primaryAction'] = {
    content: 'Create New',
    url: '/products/new',
  }

  return (
    <Page title="Products" fullWidth primaryAction={pagePrimaryAction}>
      <Card>
        <IndexTable
          selectable={false}
          headings={headings}
          itemCount={items.length}
        >
          {rowMarkup}
        </IndexTable>
      </Card>
    </Page>
  )
}
