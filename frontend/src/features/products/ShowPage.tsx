import { Card, FormLayout, Page, PageProps, TextField } from '@shopify/polaris'
import { FC } from 'react'

export const ShowPage: FC = () => {
  const pagePrimaryAction: PageProps['primaryAction'] = {
    content: 'Save',
  }
  const breadcrumbs: PageProps['breadcrumbs'] = [
    { content: 'Products', url: '/products' },
  ]

  return (
    <Page
      title="Product Title"
      fullWidth
      primaryAction={pagePrimaryAction}
      breadcrumbs={breadcrumbs}
    >
      <Card>
        <Card.Section>
          <FormLayout>
            <TextField autoComplete="off" label="Title" />
          </FormLayout>
        </Card.Section>
      </Card>
    </Page>
  )
}
