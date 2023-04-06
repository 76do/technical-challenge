import { Card, EmptyState, Page, Stack, Text } from '@shopify/polaris'
import { FC } from 'react'

export const IndexPage: FC = () => {
  return (
    <Page title="Home" fullWidth>
      <Card>
        <Card.Section>
          <EmptyState fullWidth image={'/react.svg'}>
            <Stack vertical>
              <Text variant="headingLg" as="h2">
                技術課題に取り組んでいただきありがとうございます。
              </Text>
              <p>
                課題に関してわからないことがあったら、ご気軽にお聞きください
              </p>
            </Stack>
          </EmptyState>
        </Card.Section>
      </Card>
    </Page>
  )
}
