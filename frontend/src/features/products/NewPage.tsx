import { Card, FormLayout, Page, PageProps, TextField } from '@shopify/polaris'
import { FC } from 'react'

export const NewPage: FC = () => {
  const pagePrimaryAction: PageProps['primaryAction'] = {
    content: 'Save',
  }
  const breadcrumbs: PageProps['breadcrumbs'] = [
    { content: 'Products', url: '/products' },
  ]

  return (
    <Page
      title="Create Product"
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
