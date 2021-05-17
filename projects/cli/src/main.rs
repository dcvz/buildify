extern crate clap;

use clap::{AppSettings, Clap};

#[derive(Clap, PartialEq, Debug)]
#[clap(version = "0.0.1")]
#[clap(author = "David C. <david@dcvz.io>")]
#[clap(about = "Buildify CLI interface for managing projects")]
#[clap(setting = AppSettings::ColoredHelp)]
struct CLI {
    #[clap(subcommand)]
    subcommand: SubCommand
}

#[derive(Clap, PartialEq, Debug)]
enum SubCommand {
    #[clap(version = "0.0.1", about = "Bootstraps a project", author = "David C. <david@dcvz.io>")]
    Init(Init),
}

#[derive(Clap, PartialEq, Debug)]
struct Init {
    #[clap(short = 'n', long = "name", about = "The name of the project", required = true)]
    #[clap(value_name = "PROJECT_NAME")]
    name: String
}

fn main() {
    let cli: CLI = CLI::parse();

    match cli.subcommand {
        SubCommand::Init(i) => {
            let project_name = i.name;
            println!("Should init project with name: {}", project_name)
        }
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_no_cmd() {
        CLI::try_parse_from(&["test"]).unwrap_err();
    }

    #[test]
    fn test_init_noname() {
        CLI::try_parse_from(&["test", "init"]).unwrap_err();
    }

    #[test]
    fn test_init_long() {
        assert_eq!(
            CLI {
                subcommand: SubCommand::Init(
                    Init {
                        name: "test".to_string()
                    }
                )
            },
            CLI::parse_from(&["test", "init", "--name", "test"])
        )
    }

    #[test]
    fn test_init_short() {
        assert_eq!(
            CLI {
                subcommand: SubCommand::Init(
                    Init {
                        name: "test".to_string()
                    }
                )
            },
            CLI::parse_from(&["test", "init", "-n", "test"])
        )
    }
}
