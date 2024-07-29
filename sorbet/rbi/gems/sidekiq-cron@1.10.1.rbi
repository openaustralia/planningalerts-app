# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sidekiq-cron` gem.
# Please instead update this file by running `bin/tapioca gem sidekiq-cron`.


# https://github.com/rails/rails/blob/352865d0f835c24daa9a2e9863dcc9dde9e5371a/activesupport/lib/active_support/inflector/methods.rb#L270
#
# source://sidekiq-cron//lib/sidekiq/cron/support.rb#3
module Sidekiq
  class << self
    # source://sidekiq/6.5.12/lib/sidekiq.rb#106
    def [](key); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#110
    def []=(key, val); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#303
    def average_scheduled_poll_interval=(interval); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#209
    def client_middleware; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#60
    def concurrency=(val); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#151
    def configure_client; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#141
    def configure_server; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#250
    def death_handlers; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#84
    def default_error_handler(ex, ctx); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#237
    def default_job_options; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#229
    def default_job_options=(hash); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#221
    def default_server_middleware; end

    # source://activesupport/7.0.8.4/lib/active_support/deprecation/method_wrappers.rb#63
    def default_worker_options(*args, **_arg1, &block); end

    # source://activesupport/7.0.8.4/lib/active_support/deprecation/method_wrappers.rb#63
    def default_worker_options=(*args, **_arg1, &block); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#258
    def dump_json(object); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#294
    def ent?; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#314
    def error_handlers; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#118
    def fetch(*args, &block); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#122
    def handle_exception(ex, ctx = T.unsafe(nil)); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#254
    def load_json(string); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#262
    def log_formatter; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#270
    def log_formatter=(log_formatter); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#275
    def logger; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#279
    def logger=(logger); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#114
    def merge!(hash); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#326
    def on(event, &block); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#96
    def options; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#101
    def options=(opts); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#290
    def pro?; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#73
    def queues=(val); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#159
    def redis; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#201
    def redis=(hash); end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#181
    def redis_info; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#197
    def redis_pool; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#155
    def server?; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#215
    def server_middleware; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#332
    def strict_args!(mode = T.unsafe(nil)); end

    # source://sidekiq/6.5.12/lib/sidekiq/transaction_aware_client.rb#33
    def transactional_push!; end

    # source://sidekiq/6.5.12/lib/sidekiq.rb#55
    def ❨╯°□°❩╯︵┻━┻; end
  end
end

# source://sidekiq-cron//lib/sidekiq/cron/support.rb#4
module Sidekiq::Cron; end

# source://sidekiq-cron//lib/sidekiq/cron/job.rb#9
class Sidekiq::Cron::Job
  # @return [Job] a new instance of Job
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#272
  def initialize(input_args = T.unsafe(nil)); end

  # Active Job has different structure how it is loading data from Sidekiq
  # queue, it creates a wrapper around job.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#135
  def active_job_message; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#489
  def add_jid_history(jid); end

  # Returns the value of attribute args.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def args; end

  # Sets the attribute args
  #
  # @param value the value to set the attribute args to.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def args=(_arg0); end

  # Returns the value of attribute cron.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def cron; end

  # Sets the attribute cron
  #
  # @param value the value to set the attribute cron to.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def cron=(_arg0); end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#87
  def date_as_argument?; end

  # Returns the value of attribute description.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def description; end

  # Sets the attribute description
  #
  # @param value the value to set the attribute description to.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def description=(_arg0); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#504
  def destroy; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#348
  def disable!; end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#362
  def disabled?; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#353
  def enable!; end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#358
  def enabled?; end

  # Enqueue cron job to queue.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#51
  def enque!(time = T.unsafe(nil)); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#96
  def enqueue_active_job(klass_const); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#91
  def enqueue_args; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#100
  def enqueue_sidekiq_worker(klass_const); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#428
  def errors; end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#559
  def exists?; end

  # Returns the value of attribute fetch_missing_args.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#270
  def fetch_missing_args; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#544
  def formatted_enqueue_time(now = T.unsafe(nil)); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#548
  def formatted_last_time(now = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#81
  def is_active_job?(klass = T.unsafe(nil)); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#393
  def jid_history_from_redis; end

  # Returns the value of attribute klass.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def klass; end

  # Sets the attribute klass
  #
  # @param value the value to set the attribute klass to.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def klass=(_arg0); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#452
  def klass_valid; end

  # Returns the value of attribute last_enqueue_time.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#270
  def last_enqueue_time; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#383
  def last_enqueue_time_from_redis; end

  # Parse cron specification '* * * * *' and returns
  # time when last run should be performed
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#540
  def last_time(now = T.unsafe(nil)); end

  # Returns the value of attribute message.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def message; end

  # Sets the attribute message
  #
  # @param value the value to set the attribute message to.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def message=(_arg0); end

  # Returns the value of attribute name.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def name; end

  # Sets the attribute name
  #
  # @param value the value to set the attribute name to.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#269
  def name=(_arg0); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#366
  def pretty_message; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#111
  def queue_name_with_prefix; end

  # Remove previous information about run times,
  # this will clear Redis and make sure that Redis will not overflow with memory.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#35
  def remove_previous_enques(time); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#462
  def save; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#482
  def save_last_enqueue_time; end

  # Crucial part of whole enqueuing job.
  #
  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#23
  def should_enque?(time); end

  # Sidekiq worker message.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#105
  def sidekiq_worker_message; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#563
  def sort_name; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#344
  def status; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#372
  def status_from_redis; end

  # Test if job should be enqueued.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#42
  def test_and_enque_for_time!(time); end

  # Export job data to hash.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#405
  def to_hash; end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#432
  def valid?; end

  private

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#670
  def convert_to_global_id_hash(argument); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#677
  def deserialize_argument(argument); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#698
  def deserialize_global_id(hash); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#662
  def jid_history_key; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#658
  def job_enqueued_key; end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#573
  def not_enqueued_after?(time); end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#628
  def not_past_scheduled_time?(current_time); end

  # Try parsing inbound args into an array.
  # Args from Redis will be encoded JSON,
  # try to load JSON, then failover to string array.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#580
  def parse_args(args); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#622
  def parse_enqueue_time(timestamp); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#569
  def parsed_cron; end

  # Redis key for storing one cron job.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#645
  def redis_key; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#702
  def serialize_argument(argument); end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#694
  def serialized_global_id?(hash); end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#666
  def serialized_last_enqueue_time; end

  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#606
  def symbolize_args(input); end

  # @return [Boolean]
  #
  # source://sidekiq-cron//lib/sidekiq/cron/job.rb#602
  def symbolize_args?; end

  class << self
    # Get all cron jobs.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#215
    def all; end

    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#231
    def count; end

    # Create new instance of cron job.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#253
    def create(hash); end

    # Destroy job by name.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#258
    def destroy(name); end

    # Remove all job from cron.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#523
    def destroy_all!; end

    # Remove "removed jobs" between current jobs and new jobs
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#531
    def destroy_removed_jobs(new_job_names); end

    # @return [Boolean]
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#552
    def exists?(name); end

    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#239
    def find(name); end

    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#654
    def jid_history_key(name); end

    # Redis key for storing one cron job run times (when poller added job to queue)
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#650
    def job_enqueued_key(name); end

    # Redis key for set of all cron jobs.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#635
    def jobs_key; end

    # Load cron jobs from Array.
    # Input structure should look like:
    # [
    #   {
    #     'name'        => 'name_of_job',
    #     'class'       => 'MyClass',
    #     'cron'        => '1 * * * *',
    #     'args'        => '(OPTIONAL) [Array or Hash]',
    #     'description' => '(OPTIONAL) Description of job'
    #   },
    #   {
    #     'name'  => 'Cool Job for Second Class',
    #     'class' => 'SecondClass',
    #     'cron'  => '*/5 * * * *'
    #   }
    # ]
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#197
    def load_from_array(array); end

    # Like #load_from_array.
    # If exists old jobs in Redis but removed from args, destroy old jobs.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#208
    def load_from_array!(array); end

    # Load cron jobs from Hash.
    # Input structure should look like:
    # {
    #   'name_of_job' => {
    #     'class'       => 'MyClass',
    #     'cron'        => '1 * * * *',
    #     'args'        => '(OPTIONAL) [Array or Hash]',
    #     'description' => '(OPTIONAL) Description of job'
    #   },
    #   'My super iber cool job' => {
    #     'class' => 'SecondClass',
    #     'cron'  => '*/5 * * * *'
    #   }
    # }
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#165
    def load_from_hash(hash); end

    # Like #load_from_hash.
    # If exists old jobs in Redis but removed from args, destroy old jobs.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#175
    def load_from_hash!(hash); end

    # Redis key for storing one cron job.
    #
    # source://sidekiq-cron//lib/sidekiq/cron/job.rb#640
    def redis_key(name); end
  end
end

# Use serialize/deserialize key of GlobalID.
#
# source://sidekiq-cron//lib/sidekiq/cron/job.rb#20
Sidekiq::Cron::Job::GLOBALID_KEY = T.let(T.unsafe(nil), String)

# Time format for enqueued jobs.
#
# source://sidekiq-cron//lib/sidekiq/cron/job.rb#14
Sidekiq::Cron::Job::LAST_ENQUEUE_TIME_FORMAT = T.let(T.unsafe(nil), String)

# Use the exists? method if we're on a newer version of Redis.
#
# source://sidekiq-cron//lib/sidekiq/cron/job.rb#17
Sidekiq::Cron::Job::REDIS_EXISTS_METHOD = T.let(T.unsafe(nil), Symbol)

# How long we would like to store informations about previous enqueues.
#
# source://sidekiq-cron//lib/sidekiq/cron/job.rb#11
Sidekiq::Cron::Job::REMEMBER_THRESHOLD = T.let(T.unsafe(nil), Integer)

# source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#10
module Sidekiq::Cron::Launcher
  # Add cron poller and execute normal initialize of Sidekiq launcher.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#17
  def initialize(config, **kwargs); end

  # Add cron poller to launcher.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#14
  def cron_poller; end

  # Execute normal quiet of launcher and quiet cron poller.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#31
  def quiet; end

  # Execute normal run of launcher and run cron poller.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#25
  def run; end

  # Execute normal stop of launcher and stop cron poller.
  #
  # source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#37
  def stop; end
end

# source://sidekiq-cron//lib/sidekiq/cron/launcher.rb#11
Sidekiq::Cron::Launcher::DEFAULT_POLL_INTERVAL = T.let(T.unsafe(nil), Integer)

# The Poller checks Redis every N seconds for sheduled cron jobs.
#
# source://sidekiq-cron//lib/sidekiq/cron/poller.rb#9
class Sidekiq::Cron::Poller < ::Sidekiq::Scheduled::Poller
  # @return [Poller] a new instance of Poller
  #
  # source://sidekiq-cron//lib/sidekiq/cron/poller.rb#10
  def initialize(config = T.unsafe(nil)); end

  # source://sidekiq-cron//lib/sidekiq/cron/poller.rb#20
  def enqueue; end

  private

  # source://sidekiq-cron//lib/sidekiq/cron/poller.rb#35
  def enqueue_job(job, time = T.unsafe(nil)); end

  # source://sidekiq-cron//lib/sidekiq/cron/poller.rb#44
  def poll_interval_average(process_count = T.unsafe(nil)); end
end

# source://sidekiq-cron//lib/sidekiq/cron/support.rb#5
module Sidekiq::Cron::Support
  class << self
    # source://sidekiq-cron//lib/sidekiq/cron/support.rb#6
    def constantize(camel_cased_word); end

    # source://sidekiq-cron//lib/sidekiq/cron/support.rb#36
    def load_yaml(src); end
  end
end

# source://sidekiq-cron//lib/sidekiq/options.rb#4
module Sidekiq::Options
  class << self
    # source://sidekiq-cron//lib/sidekiq/options.rb#5
    def [](key); end

    # source://sidekiq-cron//lib/sidekiq/options.rb#9
    def []=(key, value); end

    # source://sidekiq-cron//lib/sidekiq/options.rb#13
    def options_field; end
  end
end
