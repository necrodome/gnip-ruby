class Gnip::Publisher
  include Gnip

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def uri
    'publishers'
  end

  def to_xml()
    return XmlSimple.xml_out(self.to_hash, {'RootName' => nil, 'XmlDeclaration' => Gnip.header_xml})
  end

  def to_hash()
    result = {}
    result['name'] = @name
    { 'publisher' => result }
  end

  def eql?(object)
    self == object
  end

  def ==(object)
    object.instance_of?(self.class) && @name == object.name
  end

  def self.from_hash(hash)
    return Gnip::Publisher.new(hash['name'])
  end

  def self.from_xml(document)
    hash = XmlSimple.xml_in(document)
    return self.from_hash(hash)
  end

end