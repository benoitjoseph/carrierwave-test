class Picture < ApplicationRecord
  mount_uploader :file, FileUploader

  before_validation :log_before_validation
  after_validation :log_after_validation
  before_save :log_before_save
  around_save :log_around_save
  before_create :log_before_create
  around_create :log_around_create
  after_create :log_after_create
  after_save :log_after_save
  after_commit :log_after_commit
  after_rollback :log_after_rollback

  private

  def log_before_validation
    Rails.logger.info "CALLBACK: before_validation}"
  end

  def log_after_validation
    Rails.logger.info "CALLBACK: after_validation}"
  end

  def log_before_save
    Rails.logger.info "CALLBACK: before_save}"
  end

  def log_around_save
    Rails.logger.info "CALLBACK: around_save (before)}"
    yield
    Rails.logger.info "CALLBACK: around_save (after)}"
  end

  def log_before_create
    Rails.logger.info "CALLBACK: before_create}"
  end

  def log_around_create
    Rails.logger.info "CALLBACK: around_create (before)}"
    yield
    Rails.logger.info "CALLBACK: around_create (after)}"
  end

  def log_after_create
    Rails.logger.info "CALLBACK: after_create}"
  end

  def log_after_save
    Rails.logger.info "CALLBACK: after_save}"
  end

  def log_after_commit
    Rails.logger.info "CALLBACK: after_commit}"
  end

  def log_after_rollback
    Rails.logger.info "CALLBACK: after_rollback}"
  end
end
