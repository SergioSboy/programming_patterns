class BackupManagerInterface
  def create
    puts 'Creating Backup'
    "My backup at #{Time.now}"
  end

  def save(backup)
    puts "Saving #{backup} to external drive..."
  end

  def restore(backup)
    puts "Restoring #{backup}..."
  end
end

class BackupViewerInterface
  def list
    puts "Collection all available backups..."
    [
      "My Backup at #{Time.now}",
      "Old backup at #{Time.new(2021, 8, 25)}"
    ]
  end

  def pretty_print(backups)
    puts "Printing in pretty format...."
    puts backups.join("\n")
  end
end

class Backuper
  def initialize
    @interface = BackupManagerInterface.new
  end

  def make_backup
    backup = @interface.create
    @interface.save(backup)
  end

  def restore_backup(backup)
    @interface.restore(backup)
  end
end

class BackupViewer
  def initialize
    @interface = BackupViewerInterface.new
  end

  def view
    backup = @interface.list
    @interface.pretty_print(backup)
  end
end

backuper = Backuper.new
backuper.make_backup


viewer = BackupViewer.new
viewer.view