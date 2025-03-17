import ArchivedFilterButton from "@/components/ArchivedFilterButton";
import EmptyWithIcon from "@/components/EmptyWithIcon";
import SearchInput from "@/components/SearchInput";
import useAuthorization from "@/hooks/useAuthorization";
import Layout from "@/layouts/MainLayout";
import { redirectTo, reloadWithQuery } from "@/utils/route";
import { usePage } from "@inertiajs/react";
import { Button, Center, Flex, Grid, Group, Tabs } from "@mantine/core";
import { IconPlus, IconSearch } from "@tabler/icons-react";
import ProjectCard from "./Index/ProjectCard";

const ProjectsIndex = () => {
  const { items, status } = usePage().props;
  const { isAdmin } = useAuthorization();

  const search = (search) => reloadWithQuery({ search });

  return (
    <>
      <Grid justify="space-between" align="center">
        <Grid.Col span="content">
          <Group>
            <SearchInput placeholder="Search projects" search={search} />
            {isAdmin() && <ArchivedFilterButton />}
          </Group>
        </Grid.Col>
        <Grid.Col span="content">
          {can("create project") && (
            <Button
              leftSection={<IconPlus size={14} />}
              radius="xl"
              onClick={() => redirectTo("projects.create")}
            >
              Create
            </Button>
          )}
        </Grid.Col>
      </Grid>

      {status.length ? (
        <Tabs
          defaultValue={status.length > 0 ? `status${status[1].id}` : ""}
          style={{ marginTop: "22px" }}
        >
          <Tabs.List>
            {status.map((status) => (
              <Tabs.Tab key={status.id} value={`status${status.id}`}>
                {status.name}
              </Tabs.Tab>
            ))}
          </Tabs.List>

          {status.map((status) => (
            <Tabs.Panel key={status.id} value={`status${status.id}`}>
              <Flex
                mt="xl"
                gap="lg"
                justify="flex-start"
                align="flex-start"
                direction="row"
                wrap="wrap"
              >
                {items
                  .filter((item) => item.status === status.id)
                  .map((item) => (
                    <ProjectCard item={item} key={item.id} />
                  ))}
              </Flex>

              {items.filter((item) => item.status === status.id).length ===
                0 && (
                  <Center mih={200}>
                    <EmptyWithIcon
                      title="No projects found"
                      subtitle="No projects available under this status."
                      icon={IconSearch}
                    />
                  </Center>
                )}
            </Tabs.Panel>
          ))}
        </Tabs>
      ) : (
        <Center mih={400}>
          <EmptyWithIcon
            title="No projects found"
            subtitle="or you do not have access to any of them"
            icon={IconSearch}
          />
        </Center>
      )}
    </>
  );
};

ProjectsIndex.layout = (page) => <Layout title="Projects">{page}</Layout>;

export default ProjectsIndex;
