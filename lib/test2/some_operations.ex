defmodule DCH do
    import Ecto.Query
    alias Test2.Repo
    alias Test2.User

    #Repo.insert(%User{name: "Jimmy", email: "jimmyzhu1999@protonmail.com"})
    def get_dch(s) do
        "DCH：" <> s
    end
    def get_jimmy_email() do
        case Repo.all(from u in User, where: u.name == "Jimmy2" ,select: u.email) do
            [] -> 
                Repo.insert(%User{name: "Jimmy2", email: "jimmyzhu1999@protonmail.com"})
                get_jimmy_email()
            [email] -> 
                email
        end
        
    end
end