# AWS Credentials

Simple utility to read credentials from a given profile ( ARGV[0] or 'default' ) from ~/.aws/config ( AWS CLI config location ).  

ARGV[1] can be a region, or the region can be read from config, or it defaults to 'us-east-1'

## Invocation 

The utility can't modify environment variables in the parent shell, so you'll have to `eval` it's stdout with your shell:

<pre>
# load default profile
eval `aws-credentials.rb`
</pre>
Or:
<pre>
# load 'prod' profile, us-west-1 region
eval `aws-credentials.rb prod us-west-1`
</pre>

