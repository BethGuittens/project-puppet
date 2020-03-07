node default {
	file {'/root/README':
		ensure  => file,
		content => 'This is the new content for this file',
		owner   => 'root',

	}

}