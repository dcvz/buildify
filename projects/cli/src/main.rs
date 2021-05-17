extern crate clap;

use clap::{AppSettings, Clap};

#[derive(Clap)]
#[clap(version = "0.0.1")]
#[clap(author = "David C. <david@dcvz.io>")]
#[clap(about = "Buildify CLI interface for managing projects")]
#[clap(setting = AppSettings::ColoredHelp)]
struct CLI {
    #[clap(subcommand)]
    subcommand: SubCommand
}

#[derive(Clap)]
enum SubCommand {
    #[clap(version = "0.0.1", about = "Bootstraps a project", author = "David C. <david@dcvz.io>")]
    Init(Init),
}

#[derive(Clap)]
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
